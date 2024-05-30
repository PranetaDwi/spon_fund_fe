import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'tambah_event2_widget.dart' show TambahEvent2Widget;
import 'package:flutter/material.dart';

class TambahEvent2Model extends FlutterFlowModel<TambahEvent2Widget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for tanggalMulai widget.
  FocusNode? tanggalMulaiFocusNode;
  TextEditingController? tanggalMulaiTextController;
  String? Function(BuildContext, String?)? tanggalMulaiTextControllerValidator;
  // State field(s) for tanggalAkhir widget.
  FocusNode? tanggalAkhirFocusNode;
  TextEditingController? tanggalAkhirTextController;
  String? Function(BuildContext, String?)? tanggalAkhirTextControllerValidator;
  // State field(s) for venueEvent widget.
  FocusNode? venueEventFocusNode;
  TextEditingController? venueEventTextController;
  String? Function(BuildContext, String?)? venueEventTextControllerValidator;
  // State field(s) for provinsi widget.
  String? provinsiValue;
  FormFieldController<String>? provinsiValueController;
  // State field(s) for kota widget.
  String? kotaValue;
  FormFieldController<String>? kotaValueController;
  // State field(s) for alamatEvent widget.
  FocusNode? alamatEventFocusNode;
  TextEditingController? alamatEventTextController;
  String? Function(BuildContext, String?)? alamatEventTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    tanggalMulaiFocusNode?.dispose();
    tanggalMulaiTextController?.dispose();

    tanggalAkhirFocusNode?.dispose();
    tanggalAkhirTextController?.dispose();

    venueEventFocusNode?.dispose();
    venueEventTextController?.dispose();

    alamatEventFocusNode?.dispose();
    alamatEventTextController?.dispose();
  }
}
