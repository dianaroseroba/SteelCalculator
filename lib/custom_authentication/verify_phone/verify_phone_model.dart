import '../../flutter_utils/flutter_util.dart';
import 'verify_phone_widget.dart' show VerifyPhoneWidget;
import 'package:flutter/material.dart';

class VerifyPhoneModel extends FlutterModel<VerifyPhoneWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for PinCode widget.
  TextEditingController? pinCodeController;
  String? Function(BuildContext, String?)? pinCodeControllerValidator;

  @override
  void initState(BuildContext context) {
    pinCodeController = TextEditingController();
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    pinCodeController?.dispose();
  }
}
