// https://leetcode.com/problems/merge-similar-items/

import "sort"

func mergeSimilarItems(items1 [][]int, items2 [][]int) [][]int {
	itemMap := make(map[int]int)

	addToMap(itemMap, items1)
	addToMap(itemMap, items2)

	result := make([][]int, 0)

	for k, v := range itemMap {
		result = append(result, []int{k, v})
	}

	sort.Sort(byFirstElement(result))

	return result
}

func addToMap(itemMap map[int]int, items [][]int) {
	for _, item := range items {
		itemMap[item[0]] += item[1]
	}
}

type byFirstElement [][]int

func (s byFirstElement) Len() int {
	return len(s)
}

func (s byFirstElement) Swap(i, j int) {
	s[i], s[j] = s[j], s[i]
}

func (s byFirstElement) Less(i, j int) bool {
	return s[i][0] < s[j][0]
}
