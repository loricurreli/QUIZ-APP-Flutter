import 'package:flutter/material.dart';
import 'package:my_app/quiz.dart';
import 'package:my_app/result.dart';
void  main() => runApp(MyApp());

class MyApp extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp>{
  var _questionIndex = 0;
  var _totalScore = 0;
  void _handleClick(int score){
    this._totalScore+=score;
    setState(() {
      _questionIndex++;
    });
   
  }
  void _resetQuiz(){
    setState(() {
      _totalScore=0;
      _questionIndex=0;
    });
    
  }
  final _questions = const[
    {
      'questionText': 'What\'s my name?', 
      'answers': [
        {'text': 'Lorenzo', 'score': 1},
        {'text': 'Marco', 'score': 0},
        {'text': 'Alberto', 'score': 0}
      ]
    },                    
    {
      'questionText': 'What\'s my age?', 
      'answers': [
        {'text': '22', 'score': 0},
        {'text': '23', 'score': 1},
        {'text': '32', 'score': 0}
      ]
    },
    {
      'questionText': 'Where I am from?', 
      'answers': [
        {'text': 'Sardara', 'score': 1},
        {'text': 'Cagliari', 'score': 0},
        {'text': 'Roma', 'score': 0}
      ]
    }];
  @override
  Widget build(BuildContext context){
   return MaterialApp(
    home: Scaffold(
      appBar: AppBar(title: Text('QUIZ APP')),
      body: _questionIndex < _questions.length ? 
        Quiz(
          questions: _questions, 
          handleClick: _handleClick,
          questionIndex: _questionIndex
        ) : 
        Result(this._totalScore,this._resetQuiz)
    )
    );
  }
}