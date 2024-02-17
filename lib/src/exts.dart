extension IndexMaster<E> on List<E> {
  int correctIndex(int index) {
    if (index < 0) {
      return index + length;
    } else if (index > length - 1) {
      return index - length;
    }
    return index;
  }

  E forward(E toFind, int step) {
    final index = indexOf(toFind) + step;
    final _bigger = correctIndex(index);
    return this[_bigger];
  }

  E backward(E toFind, int step) {
    final index = indexOf(toFind) - step;
    final _smaller = correctIndex(index);
    return this[_smaller];
  }
}
