import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';
void  main() => runApp(MyApp());

class MyApp extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp>{
  var _questionIndex = 0;
  void _handleClick(){
    setState(() {
      if(_questionIndex<questions.length-1){
      _questionIndex++;}
      else{
        _questionIndex=_questionIndex;
      }
    });
   
  }
  final questions = const[
    {
      'questionText': 'What\'s my name?', 
      'answers': ['Lorenzo','Marco','Alberto']
    },
    {
      'questionText': 'What\'s my age?', 
      'answers': ['22','23','24']
    },
    {
      'questionText': 'Where I am from?', 
      'answers': ['Sardara','Cagliari','Roma']
    }];
  @override
  Widget build(BuildContext context){
   return MaterialApp(home: Scaffold(
    appBar: AppBar(title: Text('QUIZ APP')),
    body: Column(children: [
      Question(questions[_questionIndex]['questionText']), 
      ...(questions[_questionIndex]['answers'] as List<String>).map((answer) {
        return Answer(_handleClick, answer);
      }).toList()
      ],),
    )
    );
  }
}