import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  //1st wat
  // AnswerButton(this.answerText, this.onTap,{super.key});
  //2nd way
  const AnswerButton({ required this.answerText, required this.onTap,super.key});
  final String answerText;
  final void Function() onTap;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.symmetric(horizontal: 40,vertical: 10),
        backgroundColor: Colors.purple,
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40))
      ),
      child:  Text(answerText,textAlign: TextAlign.center,),
    );
  }
}
