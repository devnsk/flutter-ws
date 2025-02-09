import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz,{super.key});
  //  const StartScreen([this.startQuiz, Key? key]) : super(key: key);
  final void Function() startQuiz;
//  final activeImage = 'assets/quiz-logo.png';
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Column(mainAxisSize: MainAxisSize.min, children: [
        Image.asset(
          'assets/images/quiz-logo.png',
          width: 300,
          color: const Color.fromARGB(38, 255, 255, 255),
        ),
        SizedBox(
          height: 80,
        ),
        Text(
          'Learn Flutter ',
          style: TextStyle(color: Colors.white, fontSize: 24),
        ),
        const SizedBox(
          height: 30,
        ),
        OutlinedButton.icon(

          onPressed: startQuiz,
          style: OutlinedButton.styleFrom(
            foregroundColor: Colors.white,
          ),
          icon: Icon(
            Icons.arrow_right_alt,
            color: const Color.fromARGB(31, 255, 255, 255),
          ),
          label: const Text(
            'Start Quiz',
          ),
        )
      ]),
    );
  }
}
