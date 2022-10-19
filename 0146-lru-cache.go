// https://leetcode.com/problems/lru-cache/

type LRUCache struct {
	Cap int
	Map map[int]int
	Ary []int
}

func Constructor(capacity int) LRUCache {
	return LRUCache{capacity, make(map[int]int), make([]int, 0)}
}

func (lc *LRUCache) cacheLimit() int {
	cacheLimit := 0
	if len(lc.Ary) > lc.Cap {
		cacheLimit = len(lc.Ary) - lc.Cap
	}
	return cacheLimit
}

func (lc *LRUCache) Get(key int) int {
	idx := -1
	cacheLimit := lc.cacheLimit()
	lc.Ary = lc.Ary[cacheLimit:]
	idx = getIndex(lc.Ary, key)
	if idx != -1 {
		lc.Ary = append(lc.Ary[:idx], lc.Ary[idx+1:]...)
		lc.Ary = append(lc.Ary, key)
		return lc.Map[key]
	} else {
		return -1
	}
}

func (lc *LRUCache) Put(key int, value int) {
	idx := getIndex(lc.Ary, key)
	if idx != -1 {
		lc.Ary = append(lc.Ary[:idx], lc.Ary[idx+1:]...)
	}
	lc.Ary = append(lc.Ary, key)
	cacheLimit := lc.cacheLimit()
	lc.Ary = lc.Ary[cacheLimit:]
	lc.Map[key] = value
}

func getIndex(ary []int, key int) int {
	idx := -1
	for i := 0; i < len(ary); i++ {
		if ary[i] == key {
			idx = i
			break
		}
	}
	return idx
}

/**
 * Your LRUCache object will be instantiated and called as such:
 * obj := Constructor(capacity);
 * param_1 := obj.Get(key);
 * obj.Put(key,value);
 */
