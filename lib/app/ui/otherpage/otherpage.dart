import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:usingprovider/app/controller/controller.dart';

class OtherPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('See if persist data '),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Container(
                child: Text(
                  '${context.watch<Controller>().count}',
                  style: TextStyle(
                    fontSize: 40,
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}
