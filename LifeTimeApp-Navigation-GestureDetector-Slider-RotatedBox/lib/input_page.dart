import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:healthyapp/result_page.dart';
import 'package:healthyapp/user_data.dart';
import 'constants.dart';
import 'extract_widget.dart';
import 'gender_column.dart';
class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String selectGender="";
  double cigaretteNo=0;
  double sportDayNo=0;
  int height=160;
  int weight=60;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Colors.greenAccent.shade200, Colors.greenAccent.shade400])
        ),
        child: Column(

          children: [
            Expanded(
              child: Row(
                children: [

                  Expanded(child: MyContainer(

                      child: buildRowOutlineButton("Height"),
                      onPress: (){})
                  ),
                  Expanded(child: MyContainer(
                      child: buildRowOutlineButton("Weight"),
                      onPress: (){})),
                ],
              ),
            ),
            Expanded(
              child:MyContainer(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "How many days a week do you exercise?",
                        style: txtStyle,
                      ),

                      Text(sportDayNo.round().toString(),
                        style: nmbrStyle,
                      ),
                      Slider(min:0, max:7, value: sportDayNo, onChanged: (double newValue) {
                        setState(() {
                          sportDayNo=newValue;
                        });
                      },)
                    ],
                  ),
                  onPress: (){}

              ),
            ),
            Expanded(
              child:MyContainer(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                          "How many cigarettes do you smoke per day?",
                          style: txtStyle,
                      ),

                      Text(cigaretteNo.round().toString(),
                          style: nmbrStyle,
                      ),
                      Slider(min:0, max:30, value: cigaretteNo, onChanged: (double newValue) {
                        setState(() {
                          cigaretteNo=newValue;
                        });
                      },)
                    ],
                  ),
                  onPress: (){}

              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(child: MyContainer(
                    onPress: (){
                      setState(() {
                        selectGender="WOMEN";
                      });
                    },

                    clr: selectGender=="WOMEN"?Colors.blue.shade200:Colors.white,
                    child: MyColumn( txt: "WOMEN",icon: FontAwesomeIcons.venus,),
                    )
                  ),
                  Expanded(child: MyContainer(
                    onPress: (){
                      setState(() {
                        selectGender="MAN";
                      });
                    },
                    clr: selectGender=="MAN"?Colors.blue.shade200:Colors.white,
                    child: MyColumn(txt: "MAN",icon: FontAwesomeIcons.mars,),)),
                ],
              ),
            ),
            ButtonTheme(
              height: 40,
              child: Container(
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

                ),
                child: FlatButton(
                  color: Colors.blue.shade200,

                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(
                        builder: (context)=>ResultPage(UserData(height: height,cigaretteNo: cigaretteNo,selectGender: selectGender,sportDayNo: sportDayNo, weight: weight))));
                  },
                  child: Text("Result", style: btnStyle,),

                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Row buildRowOutlineButton(String heightweight) {
    return Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                          RotatedBox(
                            quarterTurns: -1,
                            child: Text(
                            "$heightweight",
                            style: txtStyle,
                        ),
                          ),
                          RotatedBox(
                            quarterTurns: -1,
                            child: Text(
                              heightweight=='Height'?height.toString():weight.toString(),
                              style: nmbrStyle,
                            ),
                          ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                ButtonTheme(
                                  minWidth: 30,
                                  child: OutlineButton(
                                      borderSide: BorderSide(color: Colors.black12),
                                      child: Icon(FontAwesomeIcons.plus,size: 12,),
                                    onPressed:(){
                                        setState(() {
                                          heightweight=='Height'?height++:weight++;
                                        });
                                  }),
                                ),
                                ButtonTheme(
                                  minWidth: 30,
                                  child: OutlineButton(
                                    borderSide: BorderSide(color: Colors.black12),
                                      child: Icon(FontAwesomeIcons.minus,size: 12,),
                                      onPressed:(){
                                      setState(() {
                                        heightweight=='Height'?height--:weight--;
                                      });
                                  }),
                                ),
                              ],
                            )
                    ]
                    );
  }
}







