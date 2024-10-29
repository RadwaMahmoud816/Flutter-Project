import 'package:flutter/material.dart';

class LanguageProvider with ChangeNotifier {
  String _currentLanguage = 'en';

  String get currentLanguage => _currentLanguage;

  void changeLanguage(String languageCode) {
    _currentLanguage = languageCode;
    notifyListeners();
  }
}
