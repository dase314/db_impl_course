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

    template<typename key_t, typename value_t, typename hashfunc>
    class lru_cache {
    public:
        typedef typename std::pair<key_t, value_t> key_value_pair_t;
        typedef typename std::list<key_value_pair_t>::iterator list_iterator_t;

        lru_cache(size_t max_size) :
                _max_size(max_size) {
        }

        RC put(const key_t& key, const value_t& value) {
          // TODO 将页和页地址放到双向链表的head
          // TODO 如果页已经存在，删除原先双向链表中的页并更新哈希表中页对应的地址
          // TODO 如果LRU的size超过链最大size，返回错误的RC
          if (!exists(key)) {
            if (size() >= _max_size) {
              return RC::BUFFERPOOL_NOBUF;
            }
            _cache_items_list.push_front({key, value});
            _cache_items_map[key] = _cache_items_list.begin();
            return RC::SUCCESS;
          } else {
            _cache_items_list.erase(_cache_items_map[key]);
            _cache_items_list.push_front({key, value});
            _cache_items_map[key] = _cache_items_list.begin();
            return RC::SUCCESS;
          }
        }

        RC get(const key_t& key, value_t* res_value) {
          // TODO 如果页不存在，throw error
          // TODO 将双向链表中对应页(key)和页地址更新到head
          // TODO 返回页的地址
          if (exists(key)) {
            value_t value = _cache_items_map[key]->second;
            _cache_items_list.erase(_cache_items_map[key]);
            _cache_items_list.push_front({key, value});
            _cache_items_map[key] = _cache_items_list.begin();
            *res_value = value;
            return RC::SUCCESS;
          } else {
            return RC::NOTFOUND;
          }
        }

        bool exists(const key_t& key) const {
          // TODO 页(key)存在，返回 true
          // TODO 页(key)不存在，返回 false
          return _cache_items_map.count(key) != 0;
        }

        size_t size() const {
          // TODO 返回LRU cache size
          return _cache_items_list.size();
        }

        RC getVictim(key_t *vic_key, bool (*check)(const key_value_pair_t& kv, void *ctx), void *ctx) const {
          // TODO 返回应该要驱逐的那个项目的对应key
          // 被驱逐的项目应该满足check条件，check条件一般是: frame的Pin count为0.
          for (auto it = _cache_items_list.rbegin(); it != _cache_items_list.rend(); it++) {
            if (check(*it, ctx)) {
              *vic_key = it->first;
              return RC::SUCCESS;
            }
          }
          return RC::NOTFOUND;
        }

        RC victim(key_t old_key, key_t new_key) {
          // TODO 将old_key删除，并将new_key和old_key以前的value插入到lrucache中
          // 比如old_key是4，它的value是40, new_key是5，则删除{4, 40}，建立{5, 40}
          // 调用者必须保证old_key是存在的
          if (!exists(old_key)) {
            return RC::NOTFOUND;
          }
          value_t old_value = _cache_items_map[old_key]->second;
          _cache_items_list.erase(_cache_items_map[old_key]);
          _cache_items_map.erase(old_key);
          _cache_items_list.push_front({new_key, old_value});
          _cache_items_map[new_key] = _cache_items_list.begin();
          return RC::SUCCESS;
        }

    public:
        std::list<key_value_pair_t> _cache_items_list;
        std::unordered_map<key_t, list_iterator_t, hashfunc> _cache_items_map;
        size_t _max_size;
    };

} // namespace cache



#endif //MINIDB_LRUCACHE_HPP
