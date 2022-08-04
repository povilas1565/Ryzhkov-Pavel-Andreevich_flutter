import 'package:flutter_test/flutter_test.dart';
import 'general_test_screen.dart';

abstract class ProfileTestScreen {
  /// поле Surname на экране персональных данных
  static Finder surnameField = GeneralTestScreen.textField('Surname');

  /// поле Birthday на экране персональных данных
  static Finder birthdayField = GeneralTestScreen.textField('Birthday');

  /// поле Name на экране персональных данных
  static Finder nameField = GeneralTestScreen.textField('Name');

  /// поле Patronymic на экране персональных данных
  static Finder patronymicField = GeneralTestScreen.textField('Patronymic');

  /// поле Далее на экране персональных данных

  static Finder nextStepBtn = GeneralTestScreen.textField('Next');

  /// поле Country на экране персональных данных
  static Finder countryField = GeneralTestScreen.textField('Country');

  /// поле Interests на экране персональных данных
  static Finder interestsField = GeneralTestScreen.textField('Interests');

  /// поле Bio на экране персональных данных
  static Finder bioField = GeneralTestScreen.textField('Bio');

}
