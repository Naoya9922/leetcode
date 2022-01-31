// https://leetcode.com/problems/product-of-the-last-k-numbers/

type ProductOfNumbers struct {
	Numbers []int
}

func Constructor() ProductOfNumbers {
	return ProductOfNumbers{nil}
}

func (this *ProductOfNumbers) Add(num int) {
	ary := append(this.Numbers, num)
	this.Numbers = ary
}

func (this *ProductOfNumbers) GetProduct(k int) int {
	ary := this.Numbers[len(this.Numbers)-k:]
	product := 1
	for i := 0; i < len(ary); i++ {
		product *= ary[i]
	}
	return product
}

/**
 * Your ProductOfNumbers object will be instantiated and called as such:
 * obj := Constructor();
 * obj.Add(num);
 * param_2 := obj.GetProduct(k);
 */
