import '/flutter_flow/flutter_flow_util.dart';
import 'feedback_widget.dart' show FeedbackWidget;
import 'package:flutter/material.dart';

class FeedbackModel extends FlutterFlowModel<FeedbackWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for Subject widget.
  FocusNode? subjectFocusNode;
  TextEditingController? subjectTextController;
  String? Function(BuildContext, String?)? subjectTextControllerValidator;
  // State field(s) for Msg widget.
  FocusNode? msgFocusNode;
  TextEditingController? msgTextController;
  String? Function(BuildContext, String?)? msgTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    subjectFocusNode?.dispose();
    subjectTextController?.dispose();

    msgFocusNode?.dispose();
    msgTextController?.dispose();
  }
}
