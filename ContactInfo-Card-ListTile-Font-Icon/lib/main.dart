import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(RowColumnApp(),

  );
}
class RowColumnApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(

        body:Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Colors.purple[300], Colors.lightBlue[600]])
          ),
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                CircleAvatar(
                  radius: 80.0,
                  backgroundColor: Colors.tealAccent,
                  backgroundImage: AssetImage('assets/images/logo.jpg'),
                ),
                Text(
                    "Trap Music",
                    style: TextStyle(
                      color:Colors.white,
                      fontSize: 50,
                      fontFamily: "Pacifico"
                    ),
                ),
                Text(
                  "Tüm Müzikler Burda...",
                  style: GoogleFonts.comfortaa(
                      color:Colors.white,
                      fontSize: 21,
                  ),
                ),
                Container(
                  width: 230,
                  child: Divider(
                    height: 32,
                    color: Colors.deepPurple,
                  ),
                ),
                Card(
                  margin: EdgeInsets.symmetric(
                    horizontal: 65.0,
                  ),
                  color: Colors.white,
                  child:ListTile(
                    leading:Icon(
                      Icons.mail_outline,
                      size: 30,
                      color: Colors.purple[400],
                    ),
                    title: Text("info@trapmusic.com",
                        style:TextStyle(
                          fontSize: 20.0,
                          color: Colors.purple[400],
                        )),
                  )
                ),SizedBox(
                  height: 10.0,
                ),
                Card(
                  margin: EdgeInsets.symmetric(
                    horizontal: 65.0,
                  ),

                  color: Colors.white,
                  child:ListTile(
                    leading: Icon(
                      Icons.phone,
                      size: 30,
                      color: Colors.purple[400],
                    ),
                    title: Text("0535 545 45 55",
                        style:TextStyle(
                          fontSize: 20.0,
                          color: Colors.purple[400],
                        )),
                  )
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
