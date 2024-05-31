
double? weiCalc(double? diameter) {
  if (diameter == 0.5) {
    return 0.020;
  } else if (diameter == 1) {
    return 0.040;
  } else if (diameter == 1.5) {
    return 0.090;
  } else if (diameter == 2) {
    return 0.160;
  } else {
    return null; // Return null if the diameter does not match any condition
  }
}

List<int> getList() {
  return List<int>.generate(10, (int index) => index);
}

double? keyBoard(
  double? initialValue,
  int? digit,
) {
  return initialValue! + digit!;
}

double? keyBoard2(
  double? initial,
  int? keyboard,
) {
  return initial! * 10 + keyboard!;
}

double? finalCalc(
  double? len,
  double? wei,
) {
  return len! * wei! * 23.312;
}
