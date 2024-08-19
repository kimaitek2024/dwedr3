import '/flutter_flow/flutter_flow_util.dart';
import 'list23_activity_responsive_widget.dart'
    show List23ActivityResponsiveWidget;
import 'package:flutter/material.dart';

class List23ActivityResponsiveModel
    extends FlutterFlowModel<List23ActivityResponsiveWidget> {
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
