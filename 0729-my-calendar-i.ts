// https://leetcode.com/problems/my-calendar-i/

type Range = {
  start: number;
  end: number;
};

class MyCalendar {
  private calendar: Range[] = [];

  constructor() {}

  book(start: number, end: number): boolean {
    const bookable = this.calendar.every((range) => {
      return start >= range.end || end <= range.start;
    });
    if (bookable) {
      this.calendar.push({ start, end });
      return true;
    }
    return false;
  }
}

/**
 * Your MyCalendar object will be instantiated and called as such:
 * var obj = new MyCalendar()
 * var param_1 = obj.book(start,end)
 */
