//
// Created by Rehoboam W on 2022/3/17.
//

#ifndef MINIDB_LRUCACHE_HPP
#define MINIDB_LRUCACHE_HPP


#include <unordered_map>
#include <list>
#include <cstddef>
#include <stdexcept>

namespace cache {

    template<typename key_t, typename value_t>
    class lru_cache {
    public:
        typedef typename std::pair<key_t, value_t> key_value_pair_t;
        typedef typename std::list<key_value_pair_t>::iterator list_iterator_t;

        lru_cache(size_t max_size) :
                _max_size(max_size) {
        }

        void put(const key_t& key, const value_t& value) {
          //TODO 实现LRU的put函数
        }

        const value_t& get(const key_t& key) {
          //TODO 实现LRU的get函数
        }

        bool exists(const key_t& key) const {
          //TODO 实现exist函数
          // key 存在返回true, key不存在返回false
        }

        size_t size() const {
          //TODO 实现size函数
          // 返回LRU cache size
        }

    private:
        std::list<key_value_pair_t> _cache_items_list;
        std::unordered_map<key_t, list_iterator_t> _cache_items_map;
        size_t _max_size;
    };

} // namespace cache



#endif //MINIDB_LRUCACHE_HPP
