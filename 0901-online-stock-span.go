// https://leetcode.com/problems/online-stock-span/

type StockSpanner struct {
	Stocks []int
}

func Constructor() StockSpanner {
	return StockSpanner{Stocks: make([]int, 0)}
}

func (ss *StockSpanner) Next(price int) int {
	ss.Stocks = append(ss.Stocks, price)
	days := 0

	for i := len(ss.Stocks) - 1; i >= 0; i-- {
		if ss.Stocks[i] <= price {
			days++
		} else {
			break
		}
	}
	return days
}

/**
 * Your StockSpanner object will be instantiated and called as such:
 * obj := Constructor();
 * param_1 := obj.Next(price);
 */
