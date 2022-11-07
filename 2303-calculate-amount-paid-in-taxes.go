// https://leetcode.com/problems/calculate-amount-paid-in-taxes/

func calculateTax(brackets [][]int, income int) float64 {
	sum := 0.0
	taxSum := 0
	for i, bracket := range brackets {
		var tax int
		if i == 0 {
			tax = bracket[0]
		} else {
			tax = bracket[0] - brackets[i-1][0]
		}
		if (taxSum + tax) > income {
			tax = income - taxSum
		}
		taxSum += tax
		sum += float64(tax*bracket[1]) / float64(100)
	}
	return sum
}
