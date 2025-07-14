import '/flutter_flow/flutter_flow_util.dart';
import 'n_f_tpage_seller_widget.dart' show NFTpageSellerWidget;
import 'package:flutter/material.dart';

class NFTpageSellerModel extends FlutterFlowModel<NFTpageSellerWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for BuySpend widget.
  FocusNode? buySpendFocusNode;
  TextEditingController? buySpendTextController;
  String? Function(BuildContext, String?)? buySpendTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    buySpendFocusNode?.dispose();
    buySpendTextController?.dispose();
  }
}
