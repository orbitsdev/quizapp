import 'package:flutter/material.dart';

class Result extends StatelessWidget {

  final int resultScore;
  final Function() resetHandler;
  Result({
    Key? key,
    required this.resultScore,
    required this.resetHandler,
  }) : super(key: key);


  String get resultPhrase{
    String resultText;

    if(resultScore <= 8){
        resultText = 'You Are awesome';
    }else if(resultScore <= 12){

        resultText = 'Pretty Likeable';
    }else if(resultScore <= 16){

        resultText = 'You Are Strange';
    }else{
        resultText = 'You Are So bad';

    }

    return resultText;
  }



  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // ignore: avoid_unnecessary_containers
        Container(
          child: Center(
            child: Text(resultPhrase,
              // ignore: prefer_const_constructors
              style: TextStyle(
                fontSize: 36,
                fontWeight: FontWeight.bold,
              ),
              
            ),
          


          ),
        ),

         // ignore: prefer_const_constructors
         TextButton(onPressed: resetHandler, child: Text("Restart Button "),),
      ],
    );
  }
}
