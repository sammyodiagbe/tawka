import 'package:flutter/foundation.dart';

class Utility extends ChangeNotifier {
  int _navigationIndex = 0;

  int get screen => _navigationIndex;

  void updateScreen(int index) {
    _navigationIndex = index;
    notifyListeners();
  }
}
