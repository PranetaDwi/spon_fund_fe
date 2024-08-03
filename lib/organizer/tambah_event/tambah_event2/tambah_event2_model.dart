import '/flutter_flow/flutter_flow_util.dart';
import 'tambah_event2_widget.dart' show TambahEvent2Widget;
import 'package:flutter/material.dart';

class TambahEvent2Model extends FlutterFlowModel<TambahEvent2Widget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  DateTime? datePicked1;
  DateTime? datePicked2;
  // State field(s) for venueEvent widget.
  FocusNode? venueEventFocusNode;
  TextEditingController? venueEventTextController;
  String? Function(BuildContext, String?)? venueEventTextControllerValidator;
  // State field(s) for alamatEvent widget.
  FocusNode? alamatEventFocusNode;
  TextEditingController? alamatEventTextController;
  String? Function(BuildContext, String?)? alamatEventTextControllerValidator;
  // State field(s) for province widget.
  FocusNode? provinceFocusNode;
  TextEditingController? provinceTextController;
  String? Function(BuildContext, String?)? provinceTextControllerValidator;
  // State field(s) for city widget.
  FocusNode? cityFocusNode;
  TextEditingController? cityTextController;
  String? Function(BuildContext, String?)? cityTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    venueEventFocusNode?.dispose();
    venueEventTextController?.dispose();

    alamatEventFocusNode?.dispose();
    alamatEventTextController?.dispose();

    provinceFocusNode?.dispose();
    provinceTextController?.dispose();

    cityFocusNode?.dispose();
    cityTextController?.dispose();
  }
}
