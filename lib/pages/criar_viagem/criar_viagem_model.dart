import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_count_controller.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CriarViagemModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // State field(s) for yourName widget.
  TextEditingController? yourNameController;
  String? Function(BuildContext, String?)? yourNameControllerValidator;
  // State field(s) for myBio widget.
  TextEditingController? myBioController1;
  String? Function(BuildContext, String?)? myBioController1Validator;
  // State field(s) for myBio widget.
  TextEditingController? myBioController2;
  String? Function(BuildContext, String?)? myBioController2Validator;
  // State field(s) for myBio widget.
  TextEditingController? myBioController3;
  String? Function(BuildContext, String?)? myBioController3Validator;
  // State field(s) for CountController widget.
  int? countControllerValue;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    yourNameController?.dispose();
    myBioController1?.dispose();
    myBioController2?.dispose();
    myBioController3?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
