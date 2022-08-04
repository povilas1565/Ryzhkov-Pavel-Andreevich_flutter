// ignore_for_file: unused_import, use_key_in_widget_constructors
import 'package:flutter/material.dart';
import 'package:flutter_gherkin/flutter_gherkin.dart';
import 'package:gherkin/gherkin.dart';
import 'package:profile/features/profile/domain/profile.dart';
import 'package:profile/features/profile/service/profile_bloc/profile_state.dart';

import '../../test_screen/screens/profile_test_screen.dart';
import 'profile_step_definitions.dart';

abstract class ValidationProfileStepDefinitions extends Iterable<StepDefinitionGeneric> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TextFormField validator'),
      ),
      body: Form(
        key: _formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextFormField(
              decoration: InputDecoration(
                hintText: 'Enter text',
              ),
              textAlign: TextAlign.center,
              validator: (text) {
                if (text == null || text.isEmpty) {
                  return 'Text is empty';
                }
                return null;
              },
            ),
            ElevatedButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  // TODO submit
                }
              },
              child: Text('Submit'),
            )
          ],
        ),
      ),
    );
  }
}
