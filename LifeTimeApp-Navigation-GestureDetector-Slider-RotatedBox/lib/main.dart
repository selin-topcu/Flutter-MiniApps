import 'package:flutter/material.dart';
import 'input_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Healthy App',
      color: Colors.white,
      theme: ThemeData(
        //scaffoldBackgroundColor: Colors.greenAccent.shade200,
        primaryColor: Colors.greenAccent.shade200,

      ),
      home: MyHomePage(title: 'Healthy App'),
    );
  }
}


