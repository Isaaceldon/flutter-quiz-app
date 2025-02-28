import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/quiz-logo.png',
          width: 300,
          color: const Color.fromRGBO(255, 255, 255, 0.589),
        ),
        SizedBox(
          height: 80,
        ),
        Text(
          "Learn Futter the fun way !",
          style: TextStyle(
            fontSize: 24,
            color: Color.fromARGB(255, 237, 223, 252),
          ),
        ),
        SizedBox(
          height: 30,
        ),
        OutlinedButton.icon(
            onPressed: startQuiz,
            style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
            icon: Icon(
              Icons.arrow_right_alt,
              color: Colors.white,
            ),
            label: Text("Start Quiz"))
      ],
    ));
  }
}
