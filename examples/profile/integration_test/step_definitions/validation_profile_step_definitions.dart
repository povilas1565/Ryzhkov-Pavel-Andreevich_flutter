
import 'package:flutter/material.dart';
import 'package:gherkin/gherkin.dart';

abstract class ValidationProfileStepDefinitions extends Iterable<StepDefinitionGeneric> {
  final _formKey = GlobalKey<FormState>();

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TextFormField validator'),
      ),
      body: Form(
        key: _formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextFormField(
              decoration: const InputDecoration(
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
              child: const Text('Submit'),
            ),
          ],
        ),
      ),
    );
  }
}