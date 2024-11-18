DateTime monthStart(int year, int month) {
  if (month == 13) {
    month = 1;
  }
  if (month == 0) {
    month = 12;
  }

  return DateTime(year, month, monthStarts[month]!.day);
}

class MonthStart {
  const MonthStart(this.month, this.day);

  final int month;
  final int day;
}

const monthStarts = <int, MonthStart>{
  1: MonthStart(1, 6),
  2: MonthStart(2, 5),
  3: MonthStart(3, 6),
  4: MonthStart(4, 5),
  5: MonthStart(5, 6),
  6: MonthStart(6, 6),
  7: MonthStart(7, 7),
  8: MonthStart(8, 8),
  9: MonthStart(9, 8),
  10: MonthStart(10, 8),
  11: MonthStart(11, 7),
  12: MonthStart(12, 7),
};
