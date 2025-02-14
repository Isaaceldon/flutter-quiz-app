import 'package:flutter/material.dart';
import 'package:flutter_application_2/quiz_app/data/questions.dart';
import 'package:flutter_application_2/quiz_app/questions_screen.dart';
import 'package:flutter_application_2/quiz_app/results_screen.dart';
import 'package:flutter_application_2/quiz_app/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  
  final List<String> selectedAnswers = [];
  
  Widget? activeScreen;

  @override
  void initState() {
    activeScreen = StartScreen(switchScreen);
    super.initState();
  }

  void chooseAnswer(String answer) {
    
      selectedAnswers.add(answer);
    if(selectedAnswers.length == questions.length){
    setState(() {
      selectedAnswers.clear();
      activeScreen = ResultsScreen(chosenAnswers: selectedAnswers);
    });
    }
  }

  void switchScreen() {
    setState(() {
      activeScreen = QuestionsScreen(onSelectAnswer: chooseAnswer,);
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(colors: [
                Color.fromARGB(255, 78, 13, 151),
                Color.fromARGB(255, 107, 15, 168),
              ], begin: Alignment.topLeft, end: Alignment.bottomRight),
            ),
            child: activeScreen),
      ),
    );
  }
}
