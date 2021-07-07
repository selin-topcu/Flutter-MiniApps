import 'package:flutter/material.dart';
import 'dart:math';
void main() {
  runApp(ImageApp());
}
class ImageApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.red[200],
          title: Text("What Should I Eat Today ?"),
        ),
        body:Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Colors.red[200], Colors.red[700]])
          ),
          child: FoodPage(),
        ),
      )
    );
  }
}

class FoodPage extends StatefulWidget {
  @override
  _FoodPageState createState() => _FoodPageState();
}

class _FoodPageState extends State<FoodPage> {
  int soapNo=1;
  int foodNo=1;
  int dessertNo=1;

  List<String> soapName=["Mercimek Çorbası", "Tarhana Çorbası", "Tavuksuyu Çorbası", "Düğün Çorbası", "Yoğurt Çorbası"];
  List<String> foodName=["Karnıyarık", "Mantı", "Kuru Fasulye", "İçli Köfte","Izgara Balık"];
  List<String> dessertName=["Kadayıf", "Baklava", "Sütlaç", "KazanDibi","Dondurma"];

  void foodrefresh(){
    setState(() {
      soapNo= Random().nextInt(5)+1;
      foodNo= Random().nextInt(5)+1;
      dessertNo= Random().nextInt(5)+1;
    });
  }

  @override
  Widget build(BuildContext context) {

    return
      Center(
      child: Column(
        children: <Widget>[
          Expanded(child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: FlatButton(
                highlightColor: Colors.red[100],
                splashColor: Colors.red[100],
                onPressed:foodrefresh,
                child: Image.asset('assets/images/corba_$soapNo.jpg')),
          ),),
          Text(soapName[soapNo-1], style: TextStyle(fontSize: 18, color:Colors.white,),),
          Container(
            width: 150,
            child: Divider(
              height: 5,
              color: Colors.white,
            ),
          ),
          Expanded(child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: FlatButton(
                highlightColor: Colors.red[100],
                splashColor: Colors.red[100],
                onPressed:foodrefresh,
                child: Image.asset('assets/images/yemek_$foodNo.jpg')),
          ),),
          Text(foodName[foodNo-1], style: TextStyle(fontSize: 18, color:Colors.white,),),
          Container(
            width: 150,
            child: Divider(
              height: 5,
              color: Colors.white,
            ),
          ),
          Expanded(child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: FlatButton(
                highlightColor: Colors.red[100],
                splashColor: Colors.red[100],
                onPressed:foodrefresh,
                child: Image.asset('assets/images/tatli_$dessertNo.jpg')),
          ),),
          Text(dessertName[dessertNo-1], style: TextStyle(fontSize: 18, color:Colors.white,),),
          Container(
            width: 150,
            child: Divider(
              height: 5,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}

