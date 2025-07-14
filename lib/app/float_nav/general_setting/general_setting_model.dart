import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'general_setting_widget.dart' show GeneralSettingWidget;
import 'package:flutter/material.dart';

class GeneralSettingModel extends FlutterFlowModel<GeneralSettingWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for Currency widget.
  String? currencyValue;
  FormFieldController<String>? currencyValueController;
  // State field(s) for Token widget.
  String? tokenValue;
  FormFieldController<String>? tokenValueController;
  // State field(s) for Language widget.
  String? languageValue;
  FormFieldController<String>? languageValueController;
  // State field(s) for Switch widget.
  bool? switchValue;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
