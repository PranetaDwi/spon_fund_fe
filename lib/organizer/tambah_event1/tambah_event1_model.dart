import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'tambah_event1_widget.dart' show TambahEvent1Widget;
import 'package:flutter/material.dart';

class TambahEvent1Model extends FlutterFlowModel<TambahEvent1Widget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for namaEvent widget.
  FocusNode? namaEventFocusNode;
  TextEditingController? namaEventTextController;
  String? Function(BuildContext, String?)? namaEventTextControllerValidator;
  // State field(s) for jenisEvent widget.
  String? jenisEventValue;
  FormFieldController<String>? jenisEventValueController;
  // State field(s) for statusEvent widget.
  String? statusEventValue;
  FormFieldController<String>? statusEventValueController;
  // State field(s) for targetPartisipan widget.
  FocusNode? targetPartisipanFocusNode;
  TextEditingController? targetPartisipanTextController;
  String? Function(BuildContext, String?)?
      targetPartisipanTextControllerValidator;
  // State field(s) for kategoriPartisipan widget.
  String? kategoriPartisipanValue;
  FormFieldController<String>? kategoriPartisipanValueController;
  // State field(s) for detailPartisipan widget.
  FocusNode? detailPartisipanFocusNode;
  TextEditingController? detailPartisipanTextController;
  String? Function(BuildContext, String?)?
      detailPartisipanTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    namaEventFocusNode?.dispose();
    namaEventTextController?.dispose();

    targetPartisipanFocusNode?.dispose();
    targetPartisipanTextController?.dispose();

    detailPartisipanFocusNode?.dispose();
    detailPartisipanTextController?.dispose();
  }
}
