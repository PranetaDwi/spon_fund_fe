import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'profil_fiks_widget.dart' show ProfilFiksWidget;
import 'package:flutter/material.dart';

class ProfilFiksModel extends FlutterFlowModel<ProfilFiksWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey1 = GlobalKey<FormState>();
  final formKey2 = GlobalKey<FormState>();
  // Stores action output result for [Backend Call - API (Get Profile )] action in profil-fiks widget.
  ApiCallResponse? apiResultProfile;
  // State field(s) for FullName widget.
  FocusNode? fullNameFocusNode;
  TextEditingController? fullNameTextController;
  String? Function(BuildContext, String?)? fullNameTextControllerValidator;
  String? _fullNameTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for Email widget.
  FocusNode? emailFocusNode;
  TextEditingController? emailTextController;
  String? Function(BuildContext, String?)? emailTextControllerValidator;
  String? _emailTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for Phone widget.
  FocusNode? phoneFocusNode;
  TextEditingController? phoneTextController;
  String? Function(BuildContext, String?)? phoneTextControllerValidator;
  String? _phoneTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for Name widget.
  FocusNode? nameFocusNode;
  TextEditingController? nameTextController;
  String? Function(BuildContext, String?)? nameTextControllerValidator;
  String? _nameTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for Province widget.
  FocusNode? provinceFocusNode;
  TextEditingController? provinceTextController;
  String? Function(BuildContext, String?)? provinceTextControllerValidator;
  String? _provinceTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for City widget.
  FocusNode? cityFocusNode;
  TextEditingController? cityTextController;
  String? Function(BuildContext, String?)? cityTextControllerValidator;
  // State field(s) for Full-Address widget.
  FocusNode? fullAddressFocusNode1;
  TextEditingController? fullAddressTextController1;
  String? Function(BuildContext, String?)? fullAddressTextController1Validator;
  // State field(s) for Full-Address widget.
  FocusNode? fullAddressFocusNode2;
  TextEditingController? fullAddressTextController2;
  String? Function(BuildContext, String?)? fullAddressTextController2Validator;
  // Stores action output result for [Backend Call - API (Logout)] action in EditProfileButton widget.
  ApiCallResponse? apiResultjcp;

  @override
  void initState(BuildContext context) {
    fullNameTextControllerValidator = _fullNameTextControllerValidator;
    emailTextControllerValidator = _emailTextControllerValidator;
    phoneTextControllerValidator = _phoneTextControllerValidator;
    nameTextControllerValidator = _nameTextControllerValidator;
    provinceTextControllerValidator = _provinceTextControllerValidator;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    fullNameFocusNode?.dispose();
    fullNameTextController?.dispose();

    emailFocusNode?.dispose();
    emailTextController?.dispose();

    phoneFocusNode?.dispose();
    phoneTextController?.dispose();

    nameFocusNode?.dispose();
    nameTextController?.dispose();

    provinceFocusNode?.dispose();
    provinceTextController?.dispose();

    cityFocusNode?.dispose();
    cityTextController?.dispose();

    fullAddressFocusNode1?.dispose();
    fullAddressTextController1?.dispose();

    fullAddressFocusNode2?.dispose();
    fullAddressTextController2?.dispose();
  }
}
