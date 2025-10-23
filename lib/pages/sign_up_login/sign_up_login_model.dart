import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'sign_up_login_widget.dart' show SignUpLoginWidget;
import 'package:flutter/material.dart';

class SignUpLoginModel extends FlutterFlowModel<SignUpLoginWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
