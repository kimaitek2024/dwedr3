import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'scan_q_r_widget.dart' show ScanQRWidget;
import 'package:flutter/material.dart';

class ScanQRModel extends FlutterFlowModel<ScanQRWidget> {
  ///  State fields for stateful widgets in this page.

  var sCanning = '';
  // Stores action output result for [Backend Call - Create Document] action in ScanQR widget.
  NotificationsRecord? attendanceScan;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode3;
  TextEditingController? textController3;
  String? Function(BuildContext, String?)? textController3Validator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    textFieldFocusNode2?.dispose();
    textController2?.dispose();

    textFieldFocusNode3?.dispose();
    textController3?.dispose();
  }
}
