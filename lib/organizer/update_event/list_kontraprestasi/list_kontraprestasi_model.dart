import '/flutter_flow/flutter_flow_util.dart';
import 'list_kontraprestasi_widget.dart' show ListKontraprestasiWidget;
import 'package:flutter/material.dart';

class ListKontraprestasiModel
    extends FlutterFlowModel<ListKontraprestasiWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
