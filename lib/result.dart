import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function restart;

  Result(this.resultScore,this.restart);

  String get resultPhrase {
    var resultText;
    if(resultScore==3){
      resultText="You won";
    }
    else{
       resultText="You lose";
    }
    return resultText;;
  }
   @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
          children: <Widget> [
            Text(
             resultPhrase, 
             style:
              TextStyle(
               fontSize: 36, 
               fontWeight: FontWeight.bold)
               ,),
            ElevatedButton(
              child: Text("Restart Quiz!"),
              onPressed: restart )
            ]
      ));
  } 
}