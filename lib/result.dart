import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    String resultText;
    if (resultScore <= 8) {
      resultText = 'You don\'t get the Quiz Yet!';
    } else if (resultScore <= 12) {
      resultText = 'You get some part of the Quiz';
    } else if (resultScore <= 16) {
      resultText = 'You got this!';
    } else {
      resultText = 'You are awesome';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          FlatButton( //We can use TextButton instead of the FlatButton
            child: Text(
              'Restart Quiz',
            ),
            //style: ButtonStyle(foregroundColor: MaterialStateProperty.all(Colors.redAccent)), // To change color of button in TextButton
            textColor: Colors.redAccent,
            onPressed: resetHandler,
          )
        ],
      ),
    );
  }
}
