import '../../flutter_utils/flutter_util.dart';
import 'forgot_password_widget.dart' show ForgotPasswordWidget;
import "package:flutter/material.dart";
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class ForgotPasswordModel
    extends FlutterModel<ForgotPasswordWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for email widget.
  FocusNode? emailFocusNode;
  TextEditingController? emailTextController;
  final emailMask = MaskTextInputFormatter(mask: '(###) ###-####');
  String? Function(BuildContext, String?)? emailTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    emailFocusNode?.dispose();
    emailTextController?.dispose();
  }
}
