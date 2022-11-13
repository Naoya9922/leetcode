// https://leetcode.com/problems/apply-discount-every-n-orders/

type Cashier struct {
	DiscountCustNum int
	CurrentCustNum  int
	Discount        int
	Products        []int
	Prices          []int
}

func Constructor(n int, discount int, products []int, prices []int) Cashier {
	return Cashier{
		DiscountCustNum: n,
		CurrentCustNum:  0,
		Discount:        discount,
		Products:        products,
		Prices:          prices}
}

func (c *Cashier) GetBill(product []int, amount []int) float64 {
	if len(product) != len(amount) {
		panic("product and amount must have the same length")
	}
	bill := 0.0
	for i := 0; i < len(amount); i++ {
		idx, err := c.getProductIdx(product[i])
		if err != nil {
			panic(err)
		}
		bill += float64(c.Prices[idx] * amount[i])
	}
	c.CurrentCustNum++
	if c.CurrentCustNum%c.DiscountCustNum == 0 {
		bill = bill * (float64(100-c.Discount) / float64(100))
	}
	return bill
}

func (c *Cashier) getProductIdx(productId int) (int, error) {
	for i, p := range c.Products {
		if p == productId {
			return i, nil
		}
	}
	return -1, errors.New("product id not found")
}

/**
 * Your Cashier object will be instantiated and called as such:
 * obj := Constructor(n, discount, products, prices);
 * param_1 := obj.GetBill(product,amount);
 */
