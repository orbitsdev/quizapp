import 'package:flutter/material.dart';

import 'package:quizqpp/answers.dart';
import 'package:quizqpp/questions.dart';

class Quiz extends StatelessWidget {

  final List<Map<String, Object>> questions;
  final Function answerQuestion; 
  final int questionIndex;
  // ignore: prefer_const_constructors_in_immutables
  Quiz({
    Key? key,
    required this.questions,
    required this.answerQuestion,
    required this.questionIndex,
  });
   // ignore: prefer_const_constructors_in_immutables
  
  // ignore: prefer_const_constructors_in_immutables
  
        
  @override
  Widget build(BuildContext context) {
    return Column( 

        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Questions(questionText: questions[questionIndex]['questionText'] as String),
          ...(questions[questionIndex]['answers'] as List<Map<String, Object>>).map((answer) {
            return Answers(functionhandler: ()=> answerQuestion(answer['score']) ,answerText: answer['text'] as String ,);
          }).toList(),     
         
        ],
      );
  }
}
