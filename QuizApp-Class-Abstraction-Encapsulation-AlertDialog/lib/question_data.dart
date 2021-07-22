import 'package:quizapp/question.dart';

class QuestionData{

  int _questionIndex=0;

  List <Question> _questions=[
    Question(questionText: "1+2=3",questionAnswer: true),
    Question(questionText: "45-42=3",questionAnswer: true),
    Question(questionText: "4*4=44",questionAnswer: false),
    Question(questionText: "12+2=122",questionAnswer: false),
    Question(questionText: "12*2=24",questionAnswer: true),
    Question(questionText: "9-3=6",questionAnswer: true),
  ];

  String getQuestionText(){
    return _questions[_questionIndex].questionText;
  }

  bool getQuestionAnswer(){
    return _questions[_questionIndex].questionAnswer;
  }

  void nextQuestion(){
    if(_questionIndex<_questions.length-1)
      {
        _questionIndex++;
      }

  }

  bool finishQuestion(){
    if(_questionIndex+1>=_questions.length){
      return true;
    }
    else{
      return false;
    }
  }

  void refreshQuestion(){
    _questionIndex=0;

  }
}