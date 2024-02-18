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

/// from 4 feb to 5 march return Animal.Tiger
///
/// from 6 march to 4 april return Rabbit
///
/// from 5 april to 4 may return Dragon
///
/// from 5 may to 5 june return Snake
///
/// from 6 june to 6 july return Horse
///
/// from 7 july to 6 august return Goat
///
/// from 7 august to 7 september return Monkey
///
/// from 8 september to 7 october return Rooster
///
/// from 8 october to 6 november return Dog
///
/// from 7 november to 6 december return Pig
///
/// from 7 december to 5 january return Rat
///
/// from 6 january to 3 february return Ox
const monthStarts = <int, MonthStart>{
  1: MonthStart(1, 6),
  2: MonthStart(2, 4),
  3: MonthStart(3, 6),
  4: MonthStart(4, 5),
  5: MonthStart(5, 5),
  6: MonthStart(6, 6),
  7: MonthStart(7, 7),
  8: MonthStart(8, 7),
  9: MonthStart(9, 8),
  10: MonthStart(10, 8),
  11: MonthStart(11, 7),
  12: MonthStart(12, 7),
};
