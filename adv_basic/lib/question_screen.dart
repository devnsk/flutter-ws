import 'package:adv_basic/answer_button.dart';
import 'package:flutter/material.dart';
import 'package:adv_basic/data/questions.dart';
import 'package:google_fonts/google_fonts.dart';
class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key,required this.onSelectAnswer});
  final void Function(String answer) onSelectAnswer;
  @override
  State<QuestionScreen> createState() {
    return _QuestionScreenState();
  }
}

class _QuestionScreenState extends State<QuestionScreen> {
  // const _QuestionScreenState({super.key})
  var currentQuestionIndex = 0;
 void  answerQuestion(String selectedAnswer){
  widget.onSelectAnswer(selectedAnswer);
  setState(()  {
    currentQuestionIndex ++;
  });
  }
  @override
  Widget build(BuildContext context) {
    final currentQuestion = questions[currentQuestionIndex];
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              currentQuestion.text,
              style: GoogleFonts.lato(
                color: const Color.fromARGB(255, 223, 163, 238),
                fontWeight: FontWeight.bold,
                fontSize: 24
              ),
              // style: TextStyle(
              //   color: Colors.white,
              //   fontWeight: FontWeight.w400,
              // ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 30),
            //spread operators
            ...currentQuestion.getShuffledAnswers().map((answer) {
              return AnswerButton(answerText: answer, onTap: (){
                answerQuestion(answer);
              });
            })
            /*
            AnswerButton(answerText: currentQuestion.answers[0],onTap: (){}),
            AnswerButton(answerText: currentQuestion.answers[1],onTap: (){}),
            AnswerButton(answerText: currentQuestion.answers[2],onTap: (){}),
            AnswerButton(answerText: currentQuestion.answers[3],onTap: (){}),
            */
          ],
        ),
      ),
    );
  }
}
