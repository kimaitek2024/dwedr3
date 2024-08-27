import '/flutter_flow/flutter_flow_util.dart';
import 'edit_profile_widget.dart' show EditProfileWidget;
import 'package:flutter/material.dart';

class EditProfileModel extends FlutterFlowModel<EditProfileWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for yourName widget.
  FocusNode? yourNameFocusNode;
  TextEditingController? yourNameTextController;
  String? Function(BuildContext, String?)? yourNameTextControllerValidator;
  // State field(s) for FullName widget.
  FocusNode? fullNameFocusNode;
  TextEditingController? fullNameTextController;
  String? Function(BuildContext, String?)? fullNameTextControllerValidator;
  // State field(s) for yourGuardianName widget.
  FocusNode? yourGuardianNameFocusNode;
  TextEditingController? yourGuardianNameTextController;
  String? Function(BuildContext, String?)?
      yourGuardianNameTextControllerValidator;
  // State field(s) for guardiaPhone widget.
  FocusNode? guardiaPhoneFocusNode;
  TextEditingController? guardiaPhoneTextController;
  String? Function(BuildContext, String?)? guardiaPhoneTextControllerValidator;
  // State field(s) for gradeLevel widget.
  FocusNode? gradeLevelFocusNode;
  TextEditingController? gradeLevelTextController;
  String? Function(BuildContext, String?)? gradeLevelTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    yourNameFocusNode?.dispose();
    yourNameTextController?.dispose();

    fullNameFocusNode?.dispose();
    fullNameTextController?.dispose();

    yourGuardianNameFocusNode?.dispose();
    yourGuardianNameTextController?.dispose();

    guardiaPhoneFocusNode?.dispose();
    guardiaPhoneTextController?.dispose();

    gradeLevelFocusNode?.dispose();
    gradeLevelTextController?.dispose();
  }
}
