import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class ColorController with ChangeNotifier, DiagnosticableTreeMixin {
  Color _color = Colors.green;
  bool _check = true;

  Color get color => _color;
  bool get check => _check;
  changeColor() {
    _check = !_check;
    if (_check == false) {
      _color = Colors.blue;
    } else {
      _color = Colors.green;
    }

    notifyListeners();
  }
}
