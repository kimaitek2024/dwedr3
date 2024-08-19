import '/components/logoacademy/logoacademy_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'auth3_create_widget.dart' show Auth3CreateWidget;
import 'package:flutter/material.dart';

class Auth3CreateModel extends FlutterFlowModel<Auth3CreateWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for logoacademy component.
  late LogoacademyModel logoacademyModel;
  // State field(s) for emailAddress widget.
  FocusNode? emailAddressFocusNode;
  TextEditingController? emailAddressTextController;
  String? Function(BuildContext, String?)? emailAddressTextControllerValidator;
  // State field(s) for StudentName widget.
  FocusNode? studentNameFocusNode;
  TextEditingController? studentNameTextController;
  String? Function(BuildContext, String?)? studentNameTextControllerValidator;
  // State field(s) for phone widget.
  FocusNode? phoneFocusNode;
  TextEditingController? phoneTextController;
  String? Function(BuildContext, String?)? phoneTextControllerValidator;
  // State field(s) for password widget.
  FocusNode? passwordFocusNode;
  TextEditingController? passwordTextController;
  late bool passwordVisibility;
  String? Function(BuildContext, String?)? passwordTextControllerValidator;
  // State field(s) for passwordConfirm widget.
  FocusNode? passwordConfirmFocusNode;
  TextEditingController? passwordConfirmTextController;
  late bool passwordConfirmVisibility;
  String? Function(BuildContext, String?)?
      passwordConfirmTextControllerValidator;

  @override
  void initState(BuildContext context) {
    logoacademyModel = createModel(context, () => LogoacademyModel());
    passwordVisibility = false;
    passwordConfirmVisibility = false;
  }

  @override
  void dispose() {
    logoacademyModel.dispose();
    emailAddressFocusNode?.dispose();
    emailAddressTextController?.dispose();

    studentNameFocusNode?.dispose();
    studentNameTextController?.dispose();

    phoneFocusNode?.dispose();
    phoneTextController?.dispose();

    passwordFocusNode?.dispose();
    passwordTextController?.dispose();

    passwordConfirmFocusNode?.dispose();
    passwordConfirmTextController?.dispose();
  }
}
