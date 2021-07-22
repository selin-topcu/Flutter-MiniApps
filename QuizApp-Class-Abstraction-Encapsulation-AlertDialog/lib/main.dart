import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quizapp/question_data.dart';
import 'constatnts.dart';

void main() => runApp(Quizes());

class Quizes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            backgroundColor: Colors.black26,
            body: SafeArea(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.0),
                  child: QuizPage(),
                ))));
  }
}

class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {

  List<Widget> Answer=[];
  QuestionData test=QuestionData();

  void buttonFunction(bool selectButton){
    if(test.finishQuestion()==true){
      showDialog(
        context: context,
        builder: (BuildContext context) {
          // return object of type Dialog
          return AlertDialog(
            title: new Text("Test Bitti"),
            actions: <Widget>[
              // usually buttons at the bottom of the dialog
              new FlatButton(
                child: new Text("Başa Dön"),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        },
      );
      setState(() {
        test.refreshQuestion();
        Answer=[];
      });
    }
    else{
      setState(() {
        test.getQuestionAnswer()==selectButton ? Answer.add(trueIcon):Answer.add(falseIcon);
        test.nextQuestion();
      });
    }

  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          flex: 4,
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                test.getQuestionText(),
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        Wrap(
          alignment: WrapAlignment.center, //eklenen iconları ortadan eklemeye başlar
          runSpacing: 3, //dikey de boşluk
          spacing: 3, //yatay da boşluk
          direction: Axis.horizontal,
          children: Answer,
        ),
        Expanded(
          flex: 1,
          child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 6.0),
              child: Row(children: <Widget>[
                Expanded(
                    child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 6),
                        child: RaisedButton(
                          padding: EdgeInsets.all(12),
                          textColor: Colors.white,
                          color: Colors.red[400],
                          child: Icon(
                            Icons.thumb_down,
                            size: 30.0,
                          ),
                          onPressed: () {
                            buttonFunction(false);

                          },
                        ))),
                Expanded(
                    child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 6),
                        child: RaisedButton(
                          padding: EdgeInsets.all(12),
                          textColor: Colors.white,
                          color: Colors.green[400],
                          child: Icon(Icons.thumb_up, size: 30.0),
                          onPressed: () {
                            buttonFunction(true);
                          },
                        ))),
              ])),
        )
      ],
    );
  }
}

