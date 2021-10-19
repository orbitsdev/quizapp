
import 'package:flutter/material.dart';

class Answers extends StatelessWidget {

  final VoidCallback functionhandler;
   final String? answerText;
   // ignore: prefer_const_constructors_in_immutables
   Answers({
    Key? key,
    required this.functionhandler,
    this.answerText,
  }) : super(key: key);
   
  @override
  Widget build(BuildContext context) {
    return Container(
      // ignore: prefer_const_constructors
      margin: EdgeInsets.symmetric(vertical:2.0),
      width: double.infinity,
      child: ElevatedButton(
          
          onPressed: functionhandler,
          child: Text(answerText!),
          
      ),
    );
  }
}
