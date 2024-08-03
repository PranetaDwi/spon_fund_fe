import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'ubah_email_widget.dart' show UbahEmailWidget;
import 'package:flutter/material.dart';

class UbahEmailModel extends FlutterFlowModel<UbahEmailWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - API (Post Update Email)] action in Text widget.
  ApiCallResponse? apiResultkd1;
  // State field(s) for emailInput widget.
  FocusNode? emailInputFocusNode;
  TextEditingController? emailInputTextController;
  String? Function(BuildContext, String?)? emailInputTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    emailInputFocusNode?.dispose();
    emailInputTextController?.dispose();
  }
}
