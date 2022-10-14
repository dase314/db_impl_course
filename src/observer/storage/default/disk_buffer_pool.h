/* Copyright (c) 2021 Xie Meiyi(xiemeiyi@hust.edu.cn) and OceanBase and/or its
affiliates. All rights reserved. miniob is licensed under Mulan PSL v2. You can
use this software according to the terms and conditions of the Mulan PSL v2. You
may obtain a copy of Mulan PSL v2 at: http://license.coscl.org.cn/MulanPSL2 THIS
SOFTWARE IS PROVIDED ON AN "AS IS" BASIS, WITHOUT WARRANTIES OF ANY KIND, EITHER
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO NON-INFRINGEMENT,
MERCHANTABILITY OR FIT FOR A PARTICULAR PURPOSE.
See the Mulan PSL v2 for more details. */

//
// Created by Longda on 2021/4/13.
//
#ifndef __OBSERVER_STORAGE_COMMON_PAGE_MANAGER_H_
#define __OBSERVER_STORAGE_COMMON_PAGE_MANAGER_H_

#include <fcntl.h>
#include <stdio.h>
#include <string.h>
#include <sys/stat.h>
#include <sys/types.h>
#include <time.h>
#include <list>
#include <vector>
#include "lrucache.hpp"
#include "rc.h"

typedef int PageNum;
/** 
 * 用于描述一个页，int表示file_desc文件描述符，PageNum表示一个表的页号
 */
typedef std::pair<int, PageNum> BufferTag;

//
#define BP_INVALID_PAGE_NUM (-1)
#define BP_PAGE_SIZE (1 << 12)
#define BP_PAGE_DATA_SIZE (BP_PAGE_SIZE - sizeof(PageNum))
#define BP_FILE_SUB_HDR_SIZE (sizeof(BPFileSubHeader))
#define BP_BUFFER_SIZE 8
#define MAX_OPEN_FILE 1024

typedef struct {
  PageNum page_num;
  char data[BP_PAGE_DATA_SIZE];
} Page;
// sizeof(Page) should be equal to BP_PAGE_SIZE

typedef struct {
  PageNum page_count;
  int allocated_pages;
} BPFileSubHeader;

typedef struct {
  bool dirty;
  unsigned int pin_count;
  unsigned long acc_time;
  int file_desc;
  Page page;
} Frame;

typedef struct {
  bool open;
  Frame *frame;
} BPPageHandle;

class BPFileHandle {
 public:
  BPFileHandle() { memset(this, 0, sizeof(*this)); }

 public:
  bool bopen;
  const char *file_name;
  int file_desc;
  Frame *hdr_frame;
  Page *hdr_page;
  char *bitmap;
  BPFileSubHeader *file_sub_header;
};

/** 
 * BPManager中lrucache对象需要用到的哈希函数，来将BufferTag进行哈希计算
 */
struct hash_func {
  size_t operator()(const BufferTag &x) const {
		return std::hash<int>{}(x.first) ^ std::hash<PageNum>{}(x.second);
	}
};

class DiskBufferPool;

class BPManager {
 public:

  BPManager(DiskBufferPool *pool, int size = BP_BUFFER_SIZE) {
    //TODO for test
    // 1. 分配frame数组，并初始化
    frame = new Frame[BP_BUFFER_SIZE];
    memset(frame, 0, sizeof(Frame) * BP_BUFFER_SIZE);
    // 2. 分配allocated数组，并初始化
    allocated = new bool[BP_BUFFER_SIZE];
    memset(allocated, 0, sizeof(bool) * BP_BUFFER_SIZE);
    // 3. 给size赋值
    this->size = BP_BUFFER_SIZE;
    // 4. 给disk_buffer_pool赋值
    disk_buffer_pool = pool;
  }

  ~BPManager() {
    //TODO for test
    // 1. 释放frame的空间
    delete[] frame;
    // 2. 释放allocated的空间
    delete[] allocated;
  }

  Frame *alloc(int file_desc, PageNum page_num);
  
  Frame *get(int file_desc, PageNum page_num) {
    /** 
     * @todo
     * 1. 如果lru cache中存在这个页，则将它返回
     * 2. 如果lru cache中不存在这个页，则返回nullptr
     */
    
    return nullptr;
  }

  Frame *getFrame() {
    /** 
     * @todo
     * 返回frame数组
     */

    return nullptr;
  }

  bool *getAllocated() {
    /** 
     * @todo
     * 返回allocated数组
     */

    return nullptr;
  }
  
  void printLruCache();

 public:
  int size;
  // 所有的空闲和已分配的Frame，容量是size
  Frame *frame = nullptr;
  // allocated表示frame中的哪些是已经分配了的了，为true表示已经分配了，为false则未被分配
  // 如果allocated全是true，则lru cache满了。容量是size
  bool *allocated = nullptr;
  DiskBufferPool *disk_buffer_pool = nullptr;
  // 如果在声明cache::lru_cache时不指定hash_func，则会编译失败，因为编译器无法对BufferTag设置一个哈希函数
  // lru cache中存储的key是BufferTag，value是frame数组的下标
  // 通过get(buffer_tag, &idx); frame[idx] 可以访问到buffer_tag对应的缓存页
  cache::lru_cache<BufferTag, int, hash_func> lrucache{BP_BUFFER_SIZE + 5};
};

class DiskBufferPool {
  friend class BPManager;
 public:
  DiskBufferPool() : bp_manager_{this} {}
  /**
   * 创建一个名称为指定文件名的分页文件
   */
  RC create_file(const char *file_name);

  /**
   * 根据文件名打开一个分页文件，返回文件ID
   * @return
   */
  RC open_file(const char *file_name, int *file_id);

  /**
   * 关闭fileID对应的分页文件
   */
  RC close_file(int file_id);

  /**
   * 根据文件ID和页号获取指定页面到缓冲区，返回页面句柄指针。
   * @return
   */
  RC get_this_page(int file_id, PageNum page_num, BPPageHandle *page_handle);

  /**
   * 在指定文件中分配一个新的页面，并将其放入缓冲区，返回页面句柄指针。
   * 分配页面时，如果文件中有空闲页，就直接分配一个空闲页；
   * 如果文件中没有空闲页，则扩展文件规模来增加新的空闲页。
   */
  RC allocate_page(int file_id, BPPageHandle *page_handle);

  /**
   * 根据页面句柄指针返回对应的页面号
   */
  RC get_page_num(BPPageHandle *page_handle, PageNum *page_num);

  /**
   * 根据页面句柄指针返回对应的数据区指针
   */
  RC get_data(BPPageHandle *page_handle, char **data);

  /**
   * 丢弃文件中编号为pageNum的页面，将其变为空闲页
   */
  RC dispose_page(int file_id, PageNum page_num);

  /**
   * 释放指定文件关联的页的内存， 如果已经脏， 则刷到磁盘，除了pinned page
   * @param file_handle
   * @param page_num 如果不指定page_num 将刷新所有页
   */
  RC force_page(int file_id, PageNum page_num);

  /**
   * 标记指定页面为“脏”页。如果修改了页面的内容，则应调用此函数，
   * 以便该页面被淘汰出缓冲区时系统将新的页面数据写入磁盘文件
   */
  RC mark_dirty(BPPageHandle *page_handle);

  /**
   * 此函数用于解除pageHandle对应页面的驻留缓冲区限制。
   * 在调用GetThisPage或AllocatePage函数将一个页面读入缓冲区后，
   * 该页面被设置为驻留缓冲区状态，以防止其在处理过程中被置换出去，
   * 因此在该页面使用完之后应调用此函数解除该限制，使得该页面此后可以正常地被淘汰出缓冲区
   */
  RC unpin_page(BPPageHandle *page_handle);

  RC pin_page(BPPageHandle *page_handle) {
    page_handle->open = true;
    page_handle->frame->pin_count++;
  }

  /**
   * 获取文件的总页数
   */
  RC get_page_count(int file_id, int *page_count);

  RC flush_all_pages(int file_id);

 protected:
  RC allocate_block(int file_desc, PageNum page_num, Frame **buf);

  RC dispose_block(Frame *buf);

  /**
   * 刷新指定文件关联的所有脏页到磁盘，除了pinned page
   * @param file_handle
   * @param page_num 如果不指定page_num 将刷新所有页
   */
  RC force_page(BPFileHandle *file_handle, PageNum page_num);

  RC force_all_pages(BPFileHandle *file_handle);

  RC check_file_id(int file_id);

  RC check_page_num(PageNum page_num, BPFileHandle *file_handle);

  RC load_page(PageNum page_num, BPFileHandle *file_handle, Frame *frame);

  RC flush_block(Frame *frame);

 public:
  BPManager bp_manager_;
  BPFileHandle *open_list_[MAX_OPEN_FILE] = {nullptr};
};

DiskBufferPool *theGlobalDiskBufferPool();

#endif  //__OBSERVER_STORAGE_COMMON_PAGE_MANAGER_H_