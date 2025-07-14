import '/flutter_flow/flutter_flow_util.dart';
import 'send_form_widget.dart' show SendFormWidget;
import 'package:flutter/material.dart';

class SendFormModel extends FlutterFlowModel<SendFormWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
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
