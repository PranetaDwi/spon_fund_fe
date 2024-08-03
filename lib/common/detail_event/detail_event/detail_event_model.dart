import '/flutter_flow/flutter_flow_util.dart';
import 'detail_event_widget.dart' show DetailEventWidget;
import 'package:flutter/material.dart';

class DetailEventModel extends FlutterFlowModel<DetailEventWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
