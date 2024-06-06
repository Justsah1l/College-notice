import 'package:flutter/material.dart';

class Infoprovider extends ChangeNotifier {
  late String _prn = '';
  String get prn => _prn;

  late String _division = '';
  String get division => _division;

  late String _year = '';
  String get year => _year;

  setprn(String prn) {
    _prn = prn;
    notifyListeners();
  }

  setdivision(String div) {
    _division = div;
    notifyListeners();
  }

  setyear(String year) {
    _year = year;
    notifyListeners();
  }
}
