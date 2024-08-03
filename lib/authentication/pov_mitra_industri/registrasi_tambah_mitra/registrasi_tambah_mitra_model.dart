import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'registrasi_tambah_mitra_widget.dart' show RegistrasiTambahMitraWidget;
import 'package:flutter/material.dart';

class RegistrasiTambahMitraModel
    extends FlutterFlowModel<RegistrasiTambahMitraWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for organisasiName widget.
  FocusNode? organisasiNameFocusNode;
  TextEditingController? organisasiNameTextController;
  String? Function(BuildContext, String?)?
      organisasiNameTextControllerValidator;
  String? _organisasiNameTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for Province widget.
  FocusNode? provinceFocusNode;
  TextEditingController? provinceTextController;
  String? Function(BuildContext, String?)? provinceTextControllerValidator;
  // State field(s) for City widget.
  FocusNode? cityFocusNode;
  TextEditingController? cityTextController;
  String? Function(BuildContext, String?)? cityTextControllerValidator;
  // State field(s) for Address widget.
  FocusNode? addressFocusNode;
  TextEditingController? addressTextController;
  String? Function(BuildContext, String?)? addressTextControllerValidator;
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  // State field(s) for MitraDescription widget.
  FocusNode? mitraDescriptionFocusNode;
  TextEditingController? mitraDescriptionTextController;
  String? Function(BuildContext, String?)?
      mitraDescriptionTextControllerValidator;
  // Stores action output result for [Backend Call - API (Post Mitra)] action in SubmitButton widget.
  ApiCallResponse? apiResultby0;

  @override
  void initState(BuildContext context) {
    organisasiNameTextControllerValidator =
        _organisasiNameTextControllerValidator;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    organisasiNameFocusNode?.dispose();
    organisasiNameTextController?.dispose();

    provinceFocusNode?.dispose();
    provinceTextController?.dispose();

    cityFocusNode?.dispose();
    cityTextController?.dispose();

    addressFocusNode?.dispose();
    addressTextController?.dispose();

    mitraDescriptionFocusNode?.dispose();
    mitraDescriptionTextController?.dispose();
  }
}
