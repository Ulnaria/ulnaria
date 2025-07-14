import '/flutter_flow/flutter_flow_util.dart';
import 'n_f_t_mint_form_widget.dart' show NFTMintFormWidget;
import 'package:flutter/material.dart';

class NFTMintFormModel extends FlutterFlowModel<NFTMintFormWidget> {
  ///  State fields for stateful widgets in this component.

  bool isDataUploading_mintedImg = false;
  FFUploadedFile uploadedLocalFile_mintedImg =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for BuySpend widget.
  FocusNode? buySpendFocusNode;
  TextEditingController? buySpendTextController;
  String? Function(BuildContext, String?)? buySpendTextControllerValidator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController3;
  String? Function(BuildContext, String?)? textController3Validator;
  // State field(s) for Checkbox widget.
  bool? checkboxValue;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    buySpendFocusNode?.dispose();
    buySpendTextController?.dispose();

    textFieldFocusNode2?.dispose();
    textController3?.dispose();
  }
}
