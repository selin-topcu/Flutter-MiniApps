import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyColumn extends StatelessWidget {
  final String txt;
  final IconData icon;

  MyColumn({required this.txt, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Icon(icon, size: 50, color: Colors.black45,),
        Text("$txt",style: TextStyle(color:Colors.black45),)
      ],
    );
  }
}