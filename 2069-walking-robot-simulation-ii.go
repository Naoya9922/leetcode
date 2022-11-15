// https://leetcode.com/problems/walking-robot-simulation-ii/

type Pos struct {
	X, Y int
}

type Robot struct {
	Pos
	Dir    string
	Width  int
	Height int
}

func Constructor(width int, height int) Robot {
	return Robot{Width: width - 1, Height: height - 1, Pos: Pos{0, 0}, Dir: "East"}
}

func (r *Robot) Step(num int) {
	perim := r.Width*2 + r.Height*2
	num = num % perim
	if num == 0 {
		num = perim
	}
	switch r.Dir {
	case "East":
		newX := r.X + num
		if newX > r.Width {
			r.Pos = Pos{r.Width, r.Y}
			r.Dir = "North"
			r.Step(newX - r.Width)
		} else {
			r.Pos = Pos{newX, r.Y}
		}
	case "North":
		newY := r.Y + num
		if newY > r.Height {
			r.Pos = Pos{r.X, r.Height}
			r.Dir = "West"
			r.Step(newY - r.Height)
		} else {
			r.Pos = Pos{r.X, newY}
		}
	case "West":
		newX := r.X - num
		if newX < 0 {
			r.Pos = Pos{0, r.Y}
			r.Dir = "South"
			r.Step(newX * -1)
		} else {
			r.Pos = Pos{newX, r.Y}
		}
	case "South":
		newY := r.Y - num
		if newY < 0 {
			r.Pos = Pos{r.X, 0}
			r.Dir = "East"
			r.Step(newY * -1)
		} else {
			r.Pos = Pos{r.X, newY}
		}
	}
}

func (r *Robot) GetPos() []int {
	return []int{r.X, r.Y}
}

func (r *Robot) GetDir() string {
	return r.Dir
}

/**
 * Your Robot object will be instantiated and called as such:
 * obj := Constructor(width, height);
 * obj.Step(num);
 * param_2 := obj.GetPos();
 * param_3 := obj.GetDir();
 */
