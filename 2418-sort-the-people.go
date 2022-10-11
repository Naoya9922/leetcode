// https://leetcode.com/problems/sort-the-people/

import "sort"

func sortPeople(names []string, heights []int) []string {
	cnt := len(names)
	if cnt != len(heights) {
		panic("names and heights must be equal length")
	}

	people := make([]Person, cnt)

	for i := 0; i < cnt; i++ {
		p := Person{names[i], heights[i]}
		people[i] = p
	}

	sort.Sort(byHeight(people))

	result := make([]string, cnt)

	for i, v := range people {
		result[i] = v.name
	}

	return result
}

type Person struct {
	name   string
	height int
}

type byHeight []Person

func (p byHeight) Len() int {
	return len(p)
}

func (p byHeight) Swap(i, j int) {
	p[i], p[j] = p[j], p[i]
}

func (p byHeight) Less(i, j int) bool {
	return p[i].height > p[j].height
}
