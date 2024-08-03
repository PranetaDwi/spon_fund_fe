import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'change_password_widget.dart' show ChangePasswordWidget;
import 'package:flutter/material.dart';

class ChangePasswordModel extends FlutterFlowModel<ChangePasswordWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for oldPassword widget.
  FocusNode? oldPasswordFocusNode;
  TextEditingController? oldPasswordTextController;
  late bool oldPasswordVisibility;
  String? Function(BuildContext, String?)? oldPasswordTextControllerValidator;
  // State field(s) for newPassword widget.
  FocusNode? newPasswordFocusNode;
  TextEditingController? newPasswordTextController;
  late bool newPasswordVisibility;
  String? Function(BuildContext, String?)? newPasswordTextControllerValidator;
  // State field(s) for newPasswordConfirmation widget.
  FocusNode? newPasswordConfirmationFocusNode;
  TextEditingController? newPasswordConfirmationTextController;
  late bool newPasswordConfirmationVisibility;
  String? Function(BuildContext, String?)?
      newPasswordConfirmationTextControllerValidator;
  // Stores action output result for [Backend Call - API (Post Update Password)] action in Button widget.
  ApiCallResponse? changePasswordResponse;

  @override
  void initState(BuildContext context) {
    oldPasswordVisibility = false;
    newPasswordVisibility = false;
    newPasswordConfirmationVisibility = false;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    oldPasswordFocusNode?.dispose();
    oldPasswordTextController?.dispose();

    newPasswordFocusNode?.dispose();
    newPasswordTextController?.dispose();

    newPasswordConfirmationFocusNode?.dispose();
    newPasswordConfirmationTextController?.dispose();
  }
}
