import '/flutter_flow/flutter_flow_util.dart';
import 'event_pendidikan_widget.dart' show EventPendidikanWidget;
import 'package:flutter/material.dart';

class EventPendidikanModel extends FlutterFlowModel<EventPendidikanWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
