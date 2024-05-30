import '/flutter_flow/flutter_flow_util.dart';
import 'daftar_sponsor_widget.dart' show DaftarSponsorWidget;
import 'package:flutter/material.dart';

class DaftarSponsorModel extends FlutterFlowModel<DaftarSponsorWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
