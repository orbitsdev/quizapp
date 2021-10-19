import 'package:flutter/material.dart';
import 'package:quizqpp/quiz.dart';
import 'package:quizqpp/result.dart';
import './questions.dart';
import './answers.dart';


void main()=> runApp(MaterialApp(
  // ignore: prefer_const_constructors
  home:  MyApp(),
));

class MyApp extends StatefulWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

 // ignore: prefer_final_fields
 var _questions  =[
      {
        'questionText':'what is your name',
        'answers': [
          {'text': 'black', 'score': 5},
           {'text': 'red', 'score': 4},
           {'text':'blue' ,'score': 3}, 
           {'text':'green', 'score':1 }
           ],
      },
      {
        'questionText':'what is your favorite animals',
        'answers': [
          {'text': 'rabbit', 'score': 20},
          {'text': 'elephant', 'score': 30}, 
          {'text': 'lion', 'score': 40}],
      },
      {
        'questionText':'what do you like',
        'answers': [
          
            {'text':'a', 'score':50},
            {'text':'b', 'score':60},
            {'text':'c', 'score':70},
          ],
      },
    ];

  var _questionIndex = 0;
  var _totalScore = 0;


  void _resetQuiz(){
    setState(() {
      _questionIndex = 0;
      _totalScore =0;
    });
  }

  void _answerQuestion(int score){

      _totalScore += score;

    setState(() {
      _questionIndex++;
    });

    print(_questionIndex);
  }

  
  @override
  Widget build(BuildContext context) {
   

    return Scaffold(
      body: _questionIndex < _questions.length 
      ? Quiz(
          questions: _questions, 
          answerQuestion: _answerQuestion,
          questionIndex: _questionIndex)
      : Result(resultScore: _totalScore, resetHandler: _resetQuiz,),
    );
  }
}