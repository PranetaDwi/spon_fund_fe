import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'ubah_event1_widget.dart' show UbahEvent1Widget;
import 'package:flutter/material.dart';

class UbahEvent1Model extends FlutterFlowModel<UbahEvent1Widget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for namaEvent widget.
  FocusNode? namaEventFocusNode1;
  TextEditingController? namaEventTextController1;
  String? Function(BuildContext, String?)? namaEventTextController1Validator;
  // State field(s) for jenisEvent widget.
  String? jenisEventValue;
  FormFieldController<String>? jenisEventValueController;
  // State field(s) for statusEvent widget.
  String? statusEventValue;
  FormFieldController<String>? statusEventValueController;
  // State field(s) for kategoriEvent widget.
  List<int>? kategoriEventValue;
  FormFieldController<List<int>>? kategoriEventValueController;
  // State field(s) for targetPartisi widget.
  FocusNode? targetPartisiFocusNode;
  TextEditingController? targetPartisiTextController;
  String? Function(BuildContext, String?)? targetPartisiTextControllerValidator;
  // State field(s) for kategoriPartisi widget.
  String? kategoriPartisiValue;
  FormFieldController<String>? kategoriPartisiValueController;
  // State field(s) for detailPartisi widget.
  FocusNode? detailPartisiFocusNode;
  TextEditingController? detailPartisiTextController;
  String? Function(BuildContext, String?)? detailPartisiTextControllerValidator;
  // State field(s) for descripsiEvent widget.
  FocusNode? descripsiEventFocusNode;
  TextEditingController? descripsiEventTextController;
  String? Function(BuildContext, String?)?
      descripsiEventTextControllerValidator;
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  DateTime? datePicked1;
  DateTime? datePicked2;
  // State field(s) for eventVenue widget.
  FocusNode? eventVenueFocusNode;
  TextEditingController? eventVenueTextController;
  String? Function(BuildContext, String?)? eventVenueTextControllerValidator;
  // State field(s) for province widget.
  FocusNode? provinceFocusNode;
  TextEditingController? provinceTextController;
  String? Function(BuildContext, String?)? provinceTextControllerValidator;
  // State field(s) for city widget.
  FocusNode? cityFocusNode;
  TextEditingController? cityTextController;
  String? Function(BuildContext, String?)? cityTextControllerValidator;
  // State field(s) for address widget.
  FocusNode? addressFocusNode;
  TextEditingController? addressTextController;
  String? Function(BuildContext, String?)? addressTextControllerValidator;
  // State field(s) for namaEvent widget.
  FocusNode? namaEventFocusNode2;
  TextEditingController? namaEventTextController2;
  String? Function(BuildContext, String?)? namaEventTextController2Validator;
  DateTime? datePicked3;
  // State field(s) for namaEvent widget.
  FocusNode? namaEventFocusNode3;
  TextEditingController? namaEventTextController3;
  String? Function(BuildContext, String?)? namaEventTextController3Validator;
  DateTime? datePicked4;
  // Stores action output result for [Backend Call - API (Update Event)] action in buttonSimpan widget.
  ApiCallResponse? apiResult6jc;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    namaEventFocusNode1?.dispose();
    namaEventTextController1?.dispose();

    targetPartisiFocusNode?.dispose();
    targetPartisiTextController?.dispose();

    detailPartisiFocusNode?.dispose();
    detailPartisiTextController?.dispose();

    descripsiEventFocusNode?.dispose();
    descripsiEventTextController?.dispose();

    eventVenueFocusNode?.dispose();
    eventVenueTextController?.dispose();

    provinceFocusNode?.dispose();
    provinceTextController?.dispose();

    cityFocusNode?.dispose();
    cityTextController?.dispose();

    addressFocusNode?.dispose();
    addressTextController?.dispose();

    namaEventFocusNode2?.dispose();
    namaEventTextController2?.dispose();

    namaEventFocusNode3?.dispose();
    namaEventTextController3?.dispose();
  }
}
