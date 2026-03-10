import 'package:flutter/material.dart';
import '../screens/quiz_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.cyan, Colors.deepPurple],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 15,
          children: [
            const Text(
              "Who wants to go to iran?",
              style: TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.w200,
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
            const Text(
              "Yes or Yes...",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 50),

            ElevatedButton(
              onPressed: (){
                Navigator.of(
                  context
                  ).push(
                  MaterialPageRoute(builder: (ctx) => const QuizScreen()),
                );
              },
              /*style: ElevatedButton.styleFrom(
                backgroundColor: Colors.deepPurple,
                padding: const EdgeInsets.symmetric(
                  horizontal: 50,
                  vertical: 15,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),*/
              style: ButtonStyle(
                shape: WidgetStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
                padding: WidgetStateProperty.all(
                  const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                ),
                backgroundColor: WidgetStateProperty.resolveWith<Color?>((
                  state,
                ) {
                  if (state.contains(WidgetState.pressed)) return Colors.orange;
                  return Colors.deepPurple;
                }),
              ),

              child: const Text(
                "Let's Deploy!",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}