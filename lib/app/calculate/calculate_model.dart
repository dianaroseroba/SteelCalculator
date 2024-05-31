import '../../flutter_utils/flutter_util.dart';
import 'calculate_widget.dart' show CalculateWidget;
import 'package:flutter/material.dart';

class CalculateModel extends FlutterModel<CalculateWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for inputLength widget.
  FocusNode? inputLengthFocusNode;
  TextEditingController? inputLengthTextController;
  String? Function(BuildContext, String?)? inputLengthTextControllerValidator;
  // State field(s) for inputSlider widget.
  double? inputSliderValue;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    inputLengthFocusNode?.dispose();
    inputLengthTextController?.dispose();
  }
}
