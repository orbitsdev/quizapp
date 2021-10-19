import 'package:flutter/material.dart';

class Questions extends StatelessWidget {

  String questionText;

  Questions({
    Key? key,
    required this.questionText,
  }) : super(key: key);

  

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Text(questionText, style: TextStyle(
         fontSize: 28,
      ),textAlign: TextAlign.center,),
    );
  }
}
