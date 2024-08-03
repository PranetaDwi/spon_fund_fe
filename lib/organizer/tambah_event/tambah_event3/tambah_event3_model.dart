import '/backend/api_requests/api_calls.dart';
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
  DateTime? datePicked;
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  // Stores action output result for [Backend Call - API (Post Event Budling)] action in buttonSelanjutnya widget.
  ApiCallResponse? apiResultw7o;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    targetDonasiSponsorFocusNode?.dispose();
    targetDonasiSponsorTextController?.dispose();
  }
}
