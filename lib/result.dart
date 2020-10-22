import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final resultScore;
  final Function resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    String resultText;
    if (resultScore <= 30) {
      resultText = 'You are awesome and innocent!';
    } else if (resultScore <= 20) {
      resultText = 'You are pretty likeable';
    } else {
      resultText = 'You are bad';
    }
    print('Result score: ' + resultScore.toString());
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultPhrase,
            style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            child: Text(
              'Restart Quiz',
            ),
            textColor: Colors.blue,
            onPressed: resetHandler,
          ),
        ],
      ),
    );
  }
}
