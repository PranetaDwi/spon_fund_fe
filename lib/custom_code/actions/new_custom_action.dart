// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
Future newCustomAction() async {
  // icon navigation next to navigate another page
// This function will navigate to another page when the icon is clicked

  await Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => ubahNama()),
  );
}
