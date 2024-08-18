import '/flutter_flow/flutter_flow_util.dart';
import 'academy_widget.dart' show AcademyWidget;
import 'package:flutter/material.dart';

class AcademyModel extends FlutterFlowModel<AcademyWidget> {
  ///  State fields for stateful widgets in this page.

  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
