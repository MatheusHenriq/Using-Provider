import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:usingprovider/app/controller/colorcontroller.dart';
import 'package:usingprovider/app/controller/controller.dart';
import 'package:usingprovider/app/ui/homepage/homepage.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(
        key: Key('Controller'),
        create: (_) => Controller(),
      ),
      ChangeNotifierProvider(
        create: (_) => ColorController(),
      )
    ],
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomePage());
  }
}
