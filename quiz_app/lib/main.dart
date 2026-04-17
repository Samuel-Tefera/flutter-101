import 'package:flutter/material.dart';

void handleStartQuiz() {
  print('Start quiz');
}

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Container(
          color: Color.fromARGB(255, 110, 1, 219),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/images/quiz-logo.png', width: 280),
                SizedBox(height: 50),
                Text(
                  "Learn flutter in fun way",
                  style: TextStyle(color: Colors.white, fontSize: 24),
                ),
                SizedBox(height: 50),
                OutlinedButton(
                  onPressed: handleStartQuiz,
                  style: OutlinedButton.styleFrom(
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: Text("Start Quiz"),
                ),
              ],
            ),
          ),
        ),
      ),
    ),
  );
}
