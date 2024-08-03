import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'tambah_event4_widget.dart' show TambahEvent4Widget;
import 'package:flutter/material.dart';

class TambahEvent4Model extends FlutterFlowModel<TambahEvent4Widget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for iconKontraprestasi widget.
  int? iconKontraprestasiValue;
  FormFieldController<int>? iconKontraprestasiValueController;
  // State field(s) for namaKontraprestasi widget.
  FocusNode? namaKontraprestasiFocusNode;
  TextEditingController? namaKontraprestasiTextController;
  String? Function(BuildContext, String?)?
      namaKontraprestasiTextControllerValidator;
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
  // State field(s) for feedbackEvent widget.
  FocusNode? feedbackEventFocusNode;
  TextEditingController? feedbackEventTextController;
  String? Function(BuildContext, String?)? feedbackEventTextControllerValidator;
  // Stores action output result for [Backend Call - API (Post Event Kontraprestasi)] action in buttonTambahKontraprstasi widget.
  ApiCallResponse? apiResultc5j;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    namaKontraprestasiFocusNode?.dispose();
    namaKontraprestasiTextController?.dispose();

    minimalSponsorFocusNode?.dispose();
    minimalSponsorTextController?.dispose();

    maksimalSponsorFocusNode?.dispose();
    maksimalSponsorTextController?.dispose();

    feedbackEventFocusNode?.dispose();
    feedbackEventTextController?.dispose();
  }
}
