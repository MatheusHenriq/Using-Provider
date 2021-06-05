import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';

class Controller with ChangeNotifier, DiagnosticableTreeMixin {
  int _count = 0;

  int get count => _count;

  increment() {
    _count++;
    notifyListeners();
  }
}
