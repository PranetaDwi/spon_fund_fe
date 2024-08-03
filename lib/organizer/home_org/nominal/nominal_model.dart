import '/flutter_flow/flutter_flow_util.dart';
import 'nominal_widget.dart' show NominalWidget;
import 'package:flutter/material.dart';

class NominalModel extends FlutterFlowModel<NominalWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
