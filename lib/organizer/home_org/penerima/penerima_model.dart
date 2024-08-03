import '/flutter_flow/flutter_flow_util.dart';
import 'penerima_widget.dart' show PenerimaWidget;
import 'package:flutter/material.dart';

class PenerimaModel extends FlutterFlowModel<PenerimaWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for namaPenerima widget.
  FocusNode? namaPenerimaFocusNode;
  TextEditingController? namaPenerimaTextController;
  String? Function(BuildContext, String?)? namaPenerimaTextControllerValidator;
  // State field(s) for namaBank widget.
  FocusNode? namaBankFocusNode;
  TextEditingController? namaBankTextController;
  String? Function(BuildContext, String?)? namaBankTextControllerValidator;
  // State field(s) for nomorRekening widget.
  FocusNode? nomorRekeningFocusNode;
  TextEditingController? nomorRekeningTextController;
  String? Function(BuildContext, String?)? nomorRekeningTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    namaPenerimaFocusNode?.dispose();
    namaPenerimaTextController?.dispose();

    namaBankFocusNode?.dispose();
    namaBankTextController?.dispose();

    nomorRekeningFocusNode?.dispose();
    nomorRekeningTextController?.dispose();
  }
}
