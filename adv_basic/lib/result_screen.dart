import 'package:adv_basic/data/questions.dart';
import 'package:adv_basic/question_summary.dart';
import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
   const ResultScreen({super.key, required this.chooseAnswers});
  final List<String> chooseAnswers;
    //  final void Function()? startQuiz;

  

  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];
    for (var i = 0; i < chooseAnswers.length; i++) {
      summary.add(
        {
          'question_index': i,
          'question': questions[i].text,
          'correct_answer': questions[i].answers[0],
          'user_answer': chooseAnswers[i]
        },
      );
    }

    return summary;
  }

  // @override
  // Widget build(BuildContext context) {
  //   // TODO: implement build
  //   final sumaryData = getSummaryData();
  //   final numTotalQuestions = questions.length;
  //   final numCorrectQuestions = sumaryData.where((data) {
  //     return data['user_answer'] == data['correct_answer'];
  //   }).length;
  //   return SizedBox(
  //     width: double.infinity,
  //     child: Container(
  //       margin: EdgeInsets.all(40),
  //       child: Column(
  //         mainAxisAlignment: MainAxisAlignment.center,
  //         children: [
  //           Text('You answered $numCorrectQuestions out of $numTotalQuestions questions correctly'),
  //           SizedBox(
  //             height: 30,
  //           ),
  //           QuestionSummary(summaryData: sumaryData),
  //           SizedBox(
  //             height: 30,
  //           ),
  //           TextButton(
  //             onPressed: () {},
  //             style: TextButton.styleFrom(
  //               foregroundColor: const Color.fromARGB(255, 29, 13, 48),
  //               backgroundColor: const Color.fromARGB(255, 186, 196, 213)
  //             ),
  //             child: Text('Restart Quiz',),
             
  //           ),
  //         ],
  //       ),
  //     ),
  //   );
  // }
  Widget build(BuildContext context) {
  // TODO: implement build
  final sumaryData = getSummaryData();
  final numTotalQuestions = questions.length;
  final numCorrectQuestions = sumaryData.where((data) {
    return data['user_answer'] == data['correct_answer'];
  }).length;
  return SizedBox(
    width: double.infinity,
    child: Container(
      margin: EdgeInsets.all(40),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'You answered $numCorrectQuestions out of $numTotalQuestions questions correctly',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.white,
              backgroundColor: Colors.blueAccent,
              letterSpacing: 1.5,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 30),
          QuestionSummary(summaryData: sumaryData),
          SizedBox(height: 30),
          TextButton(
            onPressed: () {},
            style: TextButton.styleFrom(
              foregroundColor: const Color.fromARGB(255, 29, 13, 48),
              backgroundColor: const Color.fromARGB(255, 186, 196, 213),
            ),
            child: Text(
              'Restart Quiz',
              
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
// void navigateToStart(BuildContext context){
//   Navigator.push(context, MaterialPageRoute(builder: (context) => StartScreen(startQuiz!)));
//   }
}
