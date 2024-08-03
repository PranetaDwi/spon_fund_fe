import '/flutter_flow/flutter_flow_util.dart';
import 'pencairan_dana_widget.dart' show PencairanDanaWidget;
import 'package:flutter/material.dart';

class PencairanDanaModel extends FlutterFlowModel<PencairanDanaWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
