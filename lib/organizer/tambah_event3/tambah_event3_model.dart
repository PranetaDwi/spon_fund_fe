import '/flutter_flow/flutter_flow_util.dart';
import 'tambah_event3_widget.dart' show TambahEvent3Widget;
import 'package:flutter/material.dart';

class TambahEvent3Model extends FlutterFlowModel<TambahEvent3Widget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for targetDonasiSponsor widget.
  FocusNode? targetDonasiSponsorFocusNode;
  TextEditingController? targetDonasiSponsorTextController;
  String? Function(BuildContext, String?)?
      targetDonasiSponsorTextControllerValidator;
  // State field(s) for tanggalDonasiSponsor widget.
  FocusNode? tanggalDonasiSponsorFocusNode;
  TextEditingController? tanggalDonasiSponsorTextController;
  String? Function(BuildContext, String?)?
      tanggalDonasiSponsorTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    targetDonasiSponsorFocusNode?.dispose();
    targetDonasiSponsorTextController?.dispose();

    tanggalDonasiSponsorFocusNode?.dispose();
    tanggalDonasiSponsorTextController?.dispose();
  }
}
