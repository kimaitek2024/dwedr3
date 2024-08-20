import '/flutter_flow/flutter_flow_util.dart';
import '/pages/components/logoacademy/logoacademy_widget.dart';
import 'auth3_login_widget.dart' show Auth3LoginWidget;
import 'package:flutter/material.dart';

class Auth3LoginModel extends FlutterFlowModel<Auth3LoginWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for logoacademy component.
  late LogoacademyModel logoacademyModel;
  // State field(s) for emailAddress widget.
  FocusNode? emailAddressFocusNode;
  TextEditingController? emailAddressTextController;
  String? Function(BuildContext, String?)? emailAddressTextControllerValidator;
  // State field(s) for password widget.
  FocusNode? passwordFocusNode;
  TextEditingController? passwordTextController;
  late bool passwordVisibility;
  String? Function(BuildContext, String?)? passwordTextControllerValidator;

  @override
  void initState(BuildContext context) {
    logoacademyModel = createModel(context, () => LogoacademyModel());
    passwordVisibility = false;
  }

  @override
  void dispose() {
    logoacademyModel.dispose();
    emailAddressFocusNode?.dispose();
    emailAddressTextController?.dispose();

    passwordFocusNode?.dispose();
    passwordTextController?.dispose();
  }
}
