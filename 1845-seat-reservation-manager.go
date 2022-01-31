// https://leetcode.com/problems/seat-reservation-manager/

type SeatManager struct {
	SeatNum        int
	AvailableSeats []int
}

func Constructor(n int) SeatManager {
	return SeatManager{0, []int{}}
}

func (this *SeatManager) Reserve() int {
	var seat int
	this.SeatNum++
	if len(this.AvailableSeats) != 0 {
		seat = this.AvailableSeats[0]
		this.AvailableSeats = this.AvailableSeats[1:]
	} else {
		seat = this.SeatNum
	}
	return seat
}

func (this *SeatManager) Unreserve(seatNumber int) {
	this.SeatNum--
	this.AvailableSeats = append(this.AvailableSeats, seatNumber)
	sort.Ints(this.AvailableSeats)
}

/**
 * Your SeatManager object will be instantiated and called as such:
 * obj := Constructor(n);
 * param_1 := obj.Reserve();
 * obj.Unreserve(seatNumber);
 */
