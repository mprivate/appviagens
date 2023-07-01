import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class LoginPageModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for emailLoginField widget.
  TextEditingController? emailLoginFieldController;
  String? Function(BuildContext, String?)? emailLoginFieldControllerValidator;
  // State field(s) for passwordLoginField widget.
  TextEditingController? passwordLoginFieldController;
  late bool passwordLoginFieldVisibility;
  String? Function(BuildContext, String?)?
      passwordLoginFieldControllerValidator;
  // State field(s) for nomeCadastroField widget.
  TextEditingController? nomeCadastroFieldController;
  String? Function(BuildContext, String?)? nomeCadastroFieldControllerValidator;
  String? _nomeCadastroFieldControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo é necessário';
    }

    if (val.length < 1) {
      return 'Requires at least 1 characters.';
    }
    if (val.length > 15) {
      return 'Maximum 15 characters allowed, currently ${val.length}.';
    }
    if (!RegExp(kTextValidatorUsernameRegex).hasMatch(val)) {
      return 'Must start with a letter and can only contain letters, digits and - or _.';
    }
    return null;
  }

  // State field(s) for emailCadastroField widget.
  TextEditingController? emailCadastroFieldController;
  String? Function(BuildContext, String?)?
      emailCadastroFieldControllerValidator;
  String? _emailCadastroFieldControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo é necessário';
    }

    if (!RegExp(kTextValidatorEmailRegex).hasMatch(val)) {
      return 'Has to be a valid email address.';
    }
    return null;
  }

  // State field(s) for passwordCadastroField widget.
  TextEditingController? passwordCadastroFieldController;
  late bool passwordCadastroFieldVisibility;
  String? Function(BuildContext, String?)?
      passwordCadastroFieldControllerValidator;
  // State field(s) for passwordConfirmarCadastroField widget.
  TextEditingController? passwordConfirmarCadastroFieldController;
  late bool passwordConfirmarCadastroFieldVisibility;
  String? Function(BuildContext, String?)?
      passwordConfirmarCadastroFieldControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    passwordLoginFieldVisibility = false;
    nomeCadastroFieldControllerValidator =
        _nomeCadastroFieldControllerValidator;
    emailCadastroFieldControllerValidator =
        _emailCadastroFieldControllerValidator;
    passwordCadastroFieldVisibility = false;
    passwordConfirmarCadastroFieldVisibility = false;
  }

  void dispose() {
    unfocusNode.dispose();
    emailLoginFieldController?.dispose();
    passwordLoginFieldController?.dispose();
    nomeCadastroFieldController?.dispose();
    emailCadastroFieldController?.dispose();
    passwordCadastroFieldController?.dispose();
    passwordConfirmarCadastroFieldController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
