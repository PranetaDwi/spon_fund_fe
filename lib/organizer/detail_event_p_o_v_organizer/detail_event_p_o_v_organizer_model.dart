import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'detail_event_p_o_v_organizer_widget.dart'
    show DetailEventPOVOrganizerWidget;
import 'package:flutter/material.dart';

class DetailEventPOVOrganizerModel
    extends FlutterFlowModel<DetailEventPOVOrganizerWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - API (Delete My Event)] action in Button widget.
  ApiCallResponse? apiResultp2s;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
