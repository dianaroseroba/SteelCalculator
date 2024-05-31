
Future newCustomAction(
  double? weight,
  double? length,
) async {
  // need it to multiply length and weight, then make the result appear in the text field
  double result = weight! * length!;
  return result.toString();
}
