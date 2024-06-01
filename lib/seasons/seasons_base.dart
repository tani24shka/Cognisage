import 'package:flutter/material.dart';

class SnHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SEASONS'),
        backgroundColor: Colors.transparent, // Make app bar transparent
        elevation: 0,
      ),
      extendBodyBehindAppBar: true,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/seasons_base1.jpeg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, 'season_module');
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.yellow[700],
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
                  Navigator.pushNamed(context, 'season_quiz');
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.lightGreen[600],
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

class FruitPage4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Seasons Page'),
      ),
      body: Center(
        child: Text(
          'This is the Seasons Page',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}

class QuizPage4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Quiz Page'),
      ),
      body: Center(
        child: Text(
          'This is the Quiz Page',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
