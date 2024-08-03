import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'tambah_kontraprestasi_widget.dart' show TambahKontraprestasiWidget;
import 'package:flutter/material.dart';

class TambahKontraprestasiModel
    extends FlutterFlowModel<TambahKontraprestasiWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for iconIMG widget.
  int? iconIMGValue;
  FormFieldController<int>? iconIMGValueController;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for minimalSponsor widget.
  FocusNode? minimalSponsorFocusNode;
  TextEditingController? minimalSponsorTextController;
  String? Function(BuildContext, String?)?
      minimalSponsorTextControllerValidator;
  // State field(s) for maksimalSponsor widget.
  FocusNode? maksimalSponsorFocusNode;
  TextEditingController? maksimalSponsorTextController;
  String? Function(BuildContext, String?)?
      maksimalSponsorTextControllerValidator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController4;
  String? Function(BuildContext, String?)? textController4Validator;
  // Stores action output result for [Backend Call - API (Post Event Kontraprestasi)] action in buttonSimpan widget.
  ApiCallResponse? apiResult4ao;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    minimalSponsorFocusNode?.dispose();
    minimalSponsorTextController?.dispose();

    maksimalSponsorFocusNode?.dispose();
    maksimalSponsorTextController?.dispose();

    textFieldFocusNode2?.dispose();
    textController4?.dispose();
  }
}
