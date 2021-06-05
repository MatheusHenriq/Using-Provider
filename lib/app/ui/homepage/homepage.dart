import 'package:flutter/material.dart';
import 'package:usingprovider/app/controller/colorcontroller.dart';
import 'package:usingprovider/app/controller/controller.dart';
import 'package:provider/provider.dart';
import 'package:usingprovider/app/ui/otherpage/otherpage.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Using Provider'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          InkWell(
            onTap: () {
              context.read<Controller>().increment();
              context.read<ColorController>().changeColor();
            },
            child: Container(
              height: 43,
              width: 150,
              color: Colors.pink,
              child: Text('Click to increment'),
            ),
          ),
          Center(
            child: Container(
              child: Text(
                '${context.watch<Controller>().count}',
                style: TextStyle(
                  color: context.watch<ColorController>().color,
                  fontSize: 40,
                ),
              ),
            ),
          ),
          InkWell(
            child: Container(
              color: Colors.orange,
              height: 43,
              width: 150,
              child: Text('Go to Another Page'),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => OtherPage(),
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
