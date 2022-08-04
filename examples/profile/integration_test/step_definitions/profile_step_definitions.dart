import 'package:flutter/material.dart';
import 'package:flutter_gherkin/flutter_gherkin.dart';
import 'package:gherkin/gherkin.dart';
import '../../test_screen/screens/profile_test_screen.dart';


abstract class ProfileStepDefinitions {
  static Iterable<StepDefinitionGeneric> get steps =>
      [
        when1<String, FlutterWidgetTesterWorld>(
          RegExp(r'Я указываю фамилию {string}$'),
              (surname, context) async {
            final tester = context.world.rawAppDriver;
            await tester.pumpAndSettle();
            await tester.enterText(ProfileTestScreen.surnameField, surname);
            await tester.pump();
          },
        ),
        when1<String, FlutterWidgetTesterWorld>(
          RegExp(r'Я указываю дату рождения {string}$'),
              (birthdate, context) async {
            final tester = context.world.rawAppDriver;
            await tester.pumpAndSettle();
            tester
                .widget<TextField>(ProfileTestScreen.birthdayField)
                .controller
                ?.text = birthdate;
            await tester.pump();
          },
        ),

        when1<String, FlutterWidgetTesterWorld>(
          RegExp(r'Я указываю имя {string}$'),
              (name, context) async {
            final tester = context.world.rawAppDriver;
            await tester.pumpAndSettle();
            await tester.enterText(ProfileTestScreen.nameField, name);
            await tester.pump();
          },
        ),

        when1<String, FlutterWidgetTesterWorld>(
          RegExp(r'Я указываю отчество {string}$'),
              (patronymic, context) async {
            final tester = context.world.rawAppDriver;
            await tester.pumpAndSettle();
            await tester.enterText(
                ProfileTestScreen.patronymicField, patronymic);
            await tester.pump();
          },
        ),

        when1<String, FlutterWidgetTesterWorld>(
          RegExp(r'Я указываю город {string}$'),
              (country, context) async {
            final tester = context.world.rawAppDriver;
            await tester.pumpAndSettle();
            tester
                .widget<TextField>(ProfileTestScreen.countryField)
                .controller
                ?.text = country;
            await tester.pump();
          },
        ),


        when1<String, FlutterWidgetTesterWorld>(
          RegExp(r'Я выбираю Интересы {string}$'),
              (interests, context) async {
            final tester = context.world.rawAppDriver;
            await tester.pumpAndSettle();
            tester
                .widget<TextField>(ProfileTestScreen.interestsField)
                .controller
                ?.text = interests;
            await tester.pump();
          },
        ),


        when1<String, FlutterWidgetTesterWorld>(
          RegExp(r'Я оставляю заметку о себе {string}$'),
              (bio, context) async {
            final tester = context.world.rawAppDriver;
            await tester.pumpAndSettle();
            await tester.enterText(ProfileTestScreen.bioField, bio);
            await tester.pump();
          },
        ),

      ];
}
