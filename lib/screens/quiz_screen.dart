import 'package:flutter/material.dart';
import 'package:flutter_app/models/question.dart';
import '../data/question_repository.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({super.key});

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  final List<Question> questions = QuestionRepository.getQuestions();
  int _currentIndex = 0;
  Map<int, String> _userAnswer = {};
  int _score = 0;
  bool _answered = false;
  void _nextQuestion() {
    if (_currentIndex < questions.length - 1) {
      setState(() {
        _currentIndex++;
      });
    }
  }
  void _previousQuestion(){
    if(_currentIndex > 0){
      setState(())
    }
  }

  @override
  Widget build(BuildContext context) {
    final currentQuestion = questions[_currentIndex];

    return Scaffold(
      appBar: AppBar(
        title: const Text("Quiz Time"),
      ),
      body: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(24),
        child: Column(
          children: [
            Text(currentQuestion.content),
            const SizedBox(height: 20),
            ...currentQuestion.choices.map((choice) {
              return Padding(
                padding: const EdgeInsets.all(5),
                child: ElevatedButton(
                  onPressed: null,
                  child: Text(choice),
                ),
              );
            }).toList(),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  onPressed: null,
                  child: const Text("Back"),
                ),
                ElevatedButton(
                  onPressed: _nextQuestion,
                  child: const Text("Next"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}