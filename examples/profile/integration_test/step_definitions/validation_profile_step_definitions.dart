// ignore_for_file: unused_import
import 'dart:html';
import 'package:flutter/material.dart';
import 'package:flutter_gherkin/flutter_gherkin.dart';
import 'package:gherkin/gherkin.dart';

import '../../test_screen/screens/profile_test_screen.dart';

class ValidationProfileStepDefinitions extends StatefulWidget {
  ValidationProfileStepDefinitions createState() {
    return new ValidationProfileStepDefinitions();
  }
}

class StatefulWidget {
  var Text;
}


 abstract class ProfileStepDefinitions extends Iterable<StepDefinitionGeneric> {
  final _text = TextEditingController();
  bool _validate = false;

  void dispose() {
    _text.dispose();
  }

  Widget build(BuildContext context) {
    var MainAxisAlignment;
    var Colors;
    return Scaffold(
      appBar: AppBar(
        title: Text('TextField'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              controller: _text,
              decoration: InputDecoration(
                labelText: 'Enter the Value',
                errorText: _validate ? 'Value Can\'t Be Empty' : null,
              ),
            ),
            RaisedButton(
              onPressed: () {
                setState(() {
                  _text.text.isEmpty ? _validate = true : _validate = false;
                });
              },
              child: Text('Submit'),
              textColor: Colors.white,
              color: Colors.blueAccent,
            )
        ],
        ),
      ),
    );
  }

  Scaffold({required appBar, required body}) {}

  AppBar({required title}) {}

  void setState(Null Function() param0) {}

  static TextEditingController() {}

  Column({required mainAxisAlignment, required List<Widget> children}) {}

  RaisedButton({required Null Function() onPressed, required Text child, required textColor, required color}) {}

  InputDecoration({required String labelText, String? errorText}) {}

  Center({required child}) {}

  TextField({required controller, required decoration}) {}
 }

class Widget {
  var Text;
}

class BuildContext {
}

