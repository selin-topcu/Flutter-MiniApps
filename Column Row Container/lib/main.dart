import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(RowColumnApp(),

  );
}
class RowColumnApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body:SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
            Container(
                height: 100,
                color: Colors.white,
                child: Text("1. Container")
            ),

            Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                        width: 100,
                        height: 100,
                        color: Colors.redAccent,
                    ),

                    Container(
                      width: 100,
                        height: 100,
                        color: Colors.yellow
                    )

                  ],)

            ),

              Container(
                //width: 200,
                height: 100,
                color: Colors.blue,
                child: Text("3. Container")
            ),

            ],)
        ),
      ),
    );
  }
}
