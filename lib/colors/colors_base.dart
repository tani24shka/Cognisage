import 'package:flutter/material.dart';
class CrHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Colors'),
        backgroundColor: Colors.transparent, // Make app bar transparent
        elevation: 0,
      ),
      extendBodyBehindAppBar: true,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/colors_base.jpeg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, 'color_module');
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.indigo[500],
                  minimumSize: Size(300, 80),
                ),
                child: Text(
                  'MODULE',
                  style: TextStyle(fontSize: 24, color: Colors.white),
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, 'color_quiz');
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orangeAccent[700],

                  minimumSize: Size(300, 80),
                ),
                child: Text(
                  'QUIZ',
                  style: TextStyle(fontSize: 24, color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
class ColorPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Colors Page'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Navigate to the animal_module page
            Navigator.pushNamed(context, 'ColorModuleApp'); // Assuming named route is setup
          },
          child: Text('Go to Colors Module'),
        ),
      ),
    );
  }
}

class QuizPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Quiz Page'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Navigate to the animal_module page
            Navigator.pushNamed(context, 'ColorsQuiz'); // Assuming named route is setup
          },
          child: Text(
            'This is the Quiz Page',
            style: TextStyle(fontSize: 24),
          ),
        ),
      ),
    );
  }
}
