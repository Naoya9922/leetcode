// https://leetcode.com/problems/snapshot-array/

type SnapshotArray struct {
	Array  [][]int
	CurrId int
}

func Constructor(length int) SnapshotArray {
	ary := make([][]int, 1)
	return SnapshotArray{ary, 0}
}

func (this *SnapshotArray) Set(index int, val int) {
	max := 0
	if length := len(this.Array[this.CurrId]); length > index+1 {
		max = length
	} else {
		max = index + 1
	}
	ary := make([]int, max)
	for i := 0; i < len(this.Array[this.CurrId]); i++ {
		ary[i] = this.Array[this.CurrId][i]
	}
	ary[index] = val
	this.Array[this.CurrId] = ary
}

func (this *SnapshotArray) Snap() int {
	snapId := this.CurrId
	this.CurrId += 1
	ary := this.Array[snapId]
	this.Array = append(this.Array, ary)
	return snapId
}

func (this *SnapshotArray) Get(index int, snap_id int) int {
	if this.CurrId < snap_id {
		return 0
	}
	if len(this.Array[snap_id]) <= index {
		return 0
	}
	return this.Array[snap_id][index]
}

/**
 * Your SnapshotArray object will be instantiated and called as such:
 * obj := Constructor(length);
 * obj.Set(index,val);
 * param_2 := obj.Snap();
 * param_3 := obj.Get(index,snap_id);
 */