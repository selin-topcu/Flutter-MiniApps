import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
          backgroundColor: Color(0xffD7E0FF),
          appBar: AppBar(
            backgroundColor: Colors.teal[300],
            title: Text('Kartpostal Davetiyesi'),
          ),
          body: Center(
            child: Image.asset('images/mutlu_bayramlar.jpg'),
          )),
    ),
  );
}
