import 'package:flutter/material.dart';

void main() {
  runApp(dailyQuotationsApp());
}
class ColorConstants {

}
class dailyQuotationsApp extends StatelessWidget {
  static final int greenBar = 0XFF55E1A2;
  static final int blueBar = 0XFF16C3CF;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Scaffold(
        appBar: AppBar(
          backgroundColor: Color(dailyQuotationsApp.greenBar),
          centerTitle: true,
          title: Text(
              "Daily Quotations",
              style: TextStyle(color: Colors.black)
          ),
        ),
        body: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Color(dailyQuotationsApp.greenBar), Color(dailyQuotationsApp.blueBar)])
          ),
          child:Quotations(),
        ),

      )
    );
  }
}

class Quotations extends StatefulWidget {
  @override
  _QuotationsState createState() => _QuotationsState();
}

class _QuotationsState extends State<Quotations> {
  @override
  Widget build(BuildContext context) {
    return Center(

      child: Column(
        //crossAxisAlignment: CrossAxisAlignment.center,
        //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top : 80.0,bottom : 20.0),
            child: CircleAvatar(
              radius: 80.0,
              backgroundImage: AssetImage('assets/images/logo.png'),
            ),
          ),
          Card(
              margin: EdgeInsets.symmetric(
                horizontal: 65.0,
              ),
              color: Colors.white,
              child:ListTile(
                leading:Icon(
                  Icons.check_box,
                  size: 30,
                  color: Colors.blue[400],
                ),
                title: Text("Motivational Quotes",
                    style:TextStyle(
                      fontSize: 20.0,
                      color: Colors.blue[600],
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
                  Icons.format_quote,
                  size: 30,
                  color: Colors.blue[400],
                ),
                title: Text("Famous Quotes",
                    style:TextStyle(
                      fontSize: 20.0,
                      color: Colors.blue[600],
                    )),
              )
          ),

        ],
      ),
    );
  }
}
