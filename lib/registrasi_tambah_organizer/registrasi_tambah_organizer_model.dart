import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'registrasi_tambah_organizer_widget.dart'
    show RegistrasiTambahOrganizerWidget;
import 'package:flutter/material.dart';

class RegistrasiTambahOrganizerModel
    extends FlutterFlowModel<RegistrasiTambahOrganizerWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for MitraName widget.
  FocusNode? mitraNameFocusNode;
  TextEditingController? mitraNameTextController;
  String? Function(BuildContext, String?)? mitraNameTextControllerValidator;
  String? _mitraNameTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for ProvinceDropdown widget.
  String? provinceDropdownValue;
  FormFieldController<String>? provinceDropdownValueController;
  // State field(s) for CityDropdown widget.
  String? cityDropdownValue;
  FormFieldController<String>? cityDropdownValueController;
  // State field(s) for MitraAddress widget.
  FocusNode? mitraAddressFocusNode;
  TextEditingController? mitraAddressTextController;
  String? Function(BuildContext, String?)? mitraAddressTextControllerValidator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController3;
  String? Function(BuildContext, String?)? textController3Validator;
  // State field(s) for MitraDescription widget.
  FocusNode? mitraDescriptionFocusNode;
  TextEditingController? mitraDescriptionTextController;
  String? Function(BuildContext, String?)?
      mitraDescriptionTextControllerValidator;

  @override
  void initState(BuildContext context) {
    mitraNameTextControllerValidator = _mitraNameTextControllerValidator;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    mitraNameFocusNode?.dispose();
    mitraNameTextController?.dispose();

    mitraAddressFocusNode?.dispose();
    mitraAddressTextController?.dispose();

    textFieldFocusNode?.dispose();
    textController3?.dispose();

    mitraDescriptionFocusNode?.dispose();
    mitraDescriptionTextController?.dispose();
  }
}
