import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';

int ballNumber = 1;
void main() => runApp(
      MaterialApp(
        home: Scaffold(
            backgroundColor: Colors.lightBlue,
          appBar: AppBar(
            title: Center(
              child: Text(
                "Ask me any question",
                // textAlign: TextAlign.center,
              ),
            ),
          ),
          body: MyBody(),
        ),
      ),
    );
class MyBody extends StatefulWidget {
  // const MyBody({Key? key}) : super(key: key);

  @override
  _MyBodyState createState() => _MyBodyState();
}

class _MyBodyState extends State<MyBody> {
  @override
  Widget build(BuildContext context) {
    return Column(
        children: <Widget>[
          Center(
            child: TextButton(
              onPressed: () {
                setState(() {
                  ballNumber = Random().nextInt(5) + 1;
                });

              },
              child: Image.asset("images/ball$ballNumber.png",
                width: 300,
                height: 500,
              ),
            ),
          ),
        ]
    );
  }
}
