import '/flutter_flow/flutter_flow_util.dart';
import 'list_transaksi_widget.dart' show ListTransaksiWidget;
import 'package:flutter/material.dart';

class ListTransaksiModel extends FlutterFlowModel<ListTransaksiWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
