import 'package:adv_basic/data/questions.dart';
import 'package:adv_basic/question_screen.dart';
import 'package:adv_basic/start_screen.dart';
import 'package:flutter/material.dart';
import 'package:adv_basic/result_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});
  @override
  State<StatefulWidget> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  //save selected anser
   List<String> selectedAnswers = [];
  var activeScreen = 'start-screen';
  void switchScreen() {
    setState(() {
      activeScreen = 'Questions-Screen';
    });
  }
  void chooseAnswer(String anser){
    selectedAnswers.add(anser);
    if(selectedAnswers.length == questions.length){
      setState(() {
        activeScreen = 'result-screen';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    // var screenWidget = activeScreen == 'start-screen'
    //           ? StartScreen(switchScreen)
    //           : const QuestionScreen();
    //approach 2
    Widget screenWidget = StartScreen(switchScreen);
    if (activeScreen == 'Questions-Screen') {
      screenWidget = QuestionScreen(onSelectAnswer: chooseAnswer,);
    }
    if(activeScreen == 'result-screen'){
      screenWidget = ResultScreen(chooseAnswers: selectedAnswers,);
    }

    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.deepPurple, Colors.purple],
                begin: Alignment.center),
          ),
          child: screenWidget,
        ),
      ),
    );
  }
}
