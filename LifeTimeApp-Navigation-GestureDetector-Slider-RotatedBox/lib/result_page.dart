import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:healthyapp/Result.dart';
import 'package:healthyapp/constants.dart';
import 'package:healthyapp/user_data.dart';

class ResultPage extends StatelessWidget {
  final UserData _userData;
  ResultPage(this._userData);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text("Result Page")),
      body:Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Colors.greenAccent.shade200, Colors.greenAccent.shade400])
        ),
        child: Column(
          children: [

            Expanded(
              flex: 8,
                child: Center(
                  child: Text(
                    "Your Lifetime: "+Result(_userData).rstl().round().toString(),
                    style: txtStyle,
                  ),
                )
            ),
            Expanded(

                child: ButtonTheme(
                  child: Container(
                    margin: EdgeInsets.all(10),
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

                    ),
                    child: FlatButton(
              color: Colors.blue.shade200,onPressed: (){
                    Navigator.pop(context);
            },
              child: Text("Back", style: btnStyle,
              ),),
                  ),
                ))
          ],
        ),
      )
    );
  }
}
