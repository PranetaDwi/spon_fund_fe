import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'uploadgambar_widget.dart' show UploadgambarWidget;
import 'package:flutter/material.dart';

class UploadgambarModel extends FlutterFlowModel<UploadgambarWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for provinceDropdown widget.
  String? provinceDropdownValue;
  FormFieldController<String>? provinceDropdownValueController;
  // State field(s) for cityDropdown widget.
  String? cityDropdownValue;
  FormFieldController<String>? cityDropdownValueController;
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
