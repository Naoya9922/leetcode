// https://leetcode.com/problems/find-if-path-exists-in-graph/

func validPath(n int, edges [][]int, source int, destination int) bool {
	if len(edges) == 0 {
		return true
	}

	graphMap := make(map[int][]int)
	visited := make([]int, 0)

	for _, edge := range edges {
		graphMap[edge[0]] = append(graphMap[edge[0]], edge[1])
		graphMap[edge[1]] = append(graphMap[edge[1]], edge[0])
	}

	dests := graphMap[source]
	for {
		newDests := make([]int, 0)
		for _, dest := range dests {
			for _, edge := range graphMap[dest] {
				if !contains(visited, edge) {
					if edge == destination {
						return true
					}
					newDests = append(newDests, edge)
					visited = append(visited, edge)
				}
			}
		}
		if len(newDests) == 0 {
			break
		}
		dests = newDests
	}

	return false
}

func contains(edges []int, val int) bool {
	for _, edge := range edges {
		if edge == val {
			return true
		}
	}
	return false
}
