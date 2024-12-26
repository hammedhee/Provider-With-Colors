import 'package:flutter/material.dart';

class Provider1 extends ChangeNotifier {
  Color colorForContainer1 = Colors.amberAccent;
  Color colorForContainer2 = Colors.blueAccent;

  void green() {
    colorForContainer1 = Colors.green;
    notifyListeners();
  }

  void blue() {
    colorForContainer2 = Colors.cyanAccent;
    notifyListeners();
  }
}

class provider2 extends ChangeNotifier {
  List<Color> nextColor = [
    Colors.pinkAccent,
    Colors.amberAccent,
    Colors.cyanAccent,
    Colors.greenAccent,
    Colors.blueAccent
  ];
  int b = 0;
  void changecardcolor() {
    b = (b + 1) % nextColor.length;
    notifyListeners();
  }
}
