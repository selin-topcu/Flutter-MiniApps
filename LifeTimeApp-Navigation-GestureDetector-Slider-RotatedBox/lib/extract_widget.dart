import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class MyContainer extends StatelessWidget {
  final Color clr;
  final Widget? child;
  final Function onPress;
  MyContainer({this.clr=Colors.white, this.child, required this.onPress});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onPress();
      },
      child: Container(
        margin: EdgeInsets.all(10.0),
        decoration: BoxDecoration(

          boxShadow: [
            BoxShadow(
              color: Colors.black38,
              blurRadius: 10.0,
              spreadRadius: 0.5,
              offset: Offset(
                5.0,
                5.0,
              ),
            )
          ],
          borderRadius: BorderRadius.circular(10.0),
          color: clr,
        ),
        child: child,
      ),
    );
  }
}