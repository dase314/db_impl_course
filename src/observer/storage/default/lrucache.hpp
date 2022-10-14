//
// Created by Rehoboam W on 2022/3/17.
//

#ifndef MINIDB_LRUCACHE_HPP
#define MINIDB_LRUCACHE_HPP


#include <unordered_map>
#include <list>
#include <cstddef>
#include <stdexcept>
#include "rc.h"

namespace cache {

/** 
 * 实现一个LRU链表，存储一定容量的key-value集合，最大容量是_max_size
 * 
 * - 调用exists(key)判断key是否在lru cache中
 * - 调用size() 得到lru cache的容量
 * - 调用put(key, value) 来向lru cache中插入新的key-value对，并覆盖相同key的key-value对。
 *   比如，lru cache中已经存在(10, 10)，那么put(10, 11)后，10对应的值就是11
 * - 调用get(key)得到key对应的值 
 * - 调用getVictim(&vic_key, check, ctx) 来得到满足check条件的可以被驱逐的key
 *   这个check和ctx是caller传递过来的，一般指disk_buffer_pool.cpp中的not_pinned()函数和BPManager对象指针
 * - 调用victim(vic_key, new_key) 来将vic_key-value 替换成new_key-value。
 * 
 * 每次调用put()和get()后，访问的key-value对都会移动到双向链表的头部，这样的话，双向链表的尾部
 * 就是最近最少使用的key-value对了。
 * 
 * LRU链表使用双向循环链表来实现，我们使用std::list模板类。
 * 每个key-value对作为一个元素存储在std::list中。
 * 为了提高查找效率，我们使用哈希表来存储key对应的std::list中的迭代器，这样的话，就可以根据key直接定位到std::list
 * 中的位置，而不用遍历整个链表。哈希表采用std::unordered_map模板类，哈希值计算函数采用disk_buffer_pool.h中的hash_func
 * 
 * 上层的BPManager类会使用到这个lru_cache的实现
 */
    template<typename key_t, typename value_t, typename hashfunc>
    class lru_cache {
    public:
        typedef typename std::pair<key_t, value_t> key_value_pair_t;
        typedef typename std::list<key_value_pair_t>::iterator list_iterator_t;

        lru_cache(size_t max_size) :
                _max_size(max_size) {
        }

        RC put(const key_t& key, const value_t& value) {
          /** 
           * @todo 
           * 1. 如果key在lru cache中存在，则需要用新的key-value替换_cache_items_list和_cache_items_map中旧的
           *    然后返回RC::SUCCESS
           * 2. 如果key不在lru cache中，则
           *    2.1 如果lru cache已经达到最大容量，则返回RC::BUFFERPOOL_NOBUF
           *    2.2 如果没有达到最大容量，则在_cache_items_list和_cache_items_map中插入新的
           */

          return RC::SUCCESS;
        }

        RC get(const key_t& key, value_t* res_value) {
          /** 
           * @todo
           * 1. 如果页不存在，返回RC::NOTFOUND
           * 2. 如果页存在，将key对应的key-value对移动到_cache_items_list的头部，并更新_cache_items_map
           *    将res_value设置为结果value。返回RC::SUCCESS
           */

          return RC::SUCCESS;
        }

        bool exists(const key_t& key) const {
          /**
           * @todo
           * key存在，返回 true
           * key不存在，返回 false
           */

          return false;
        }

        size_t size() const {
          /** 
           * @todo
           * 返回LRU cache size
           */
          
          return 0;
        }

        RC getVictim(key_t *vic_key, bool (*check)(const key_value_pair_t& kv, void *ctx), void *ctx) const {
          
          for (auto it = _cache_items_list.rbegin(); it != _cache_items_list.rend(); it++) {
            if (check(*it, ctx)) {
              /**
               * @todo
               * 1. vic_key是被驱逐的那个项目的对应key，
               * 被驱逐的项目应该满足check条件，check条件一般是: frame的Pin count为0.
               * 2. 返回 RC::SUCCESS
               */
            }
          }
          return RC::NOTFOUND;
        }

        RC victim(key_t old_key, key_t new_key) {
          /** 
           * @todo
           * 1. 如果old_key不存在，返回RC::NOTFOUND
           * 2. 将old_key删除，并将new_key和old_key对应的value插入到lrucache中，更新_cache_items_list和_cache_items_map
           *    调用者必须保证old_key是存在的。返回RC::SUCCESS
           * 
           * 比如old_key是4，它的value是40, new_key是5，则删除{4, 40}，建立{5, 40}
           */
          
          return RC::SUCCESS;
        }

    public:
        std::list<key_value_pair_t> _cache_items_list;
        std::unordered_map<key_t, list_iterator_t, hashfunc> _cache_items_map;
        size_t _max_size;
    };

} // namespace cache



#endif //MINIDB_LRUCACHE_HPP