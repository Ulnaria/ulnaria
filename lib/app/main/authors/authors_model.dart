import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'authors_widget.dart' show AuthorsWidget;
import 'package:flutter/material.dart';

class AuthorsModel extends FlutterFlowModel<AuthorsWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
