import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class GreetingModuleApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     // debugShowCheckedModeBanner: false,
      title: 'Greeting',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const GreetingModuleHomePage(),
    );
  }
}

class GreetingModuleHomePage extends StatefulWidget {
  const GreetingModuleHomePage({super.key});

  @override
  _GreetingModuleHomePageState createState() => _GreetingModuleHomePageState();
}

class _GreetingModuleHomePageState extends State<GreetingModuleHomePage> {
  int _currentIndex = 0;
  final List<String> _greeting = ['good morning', 'good night', 'sorry', 'how are you', 'thank you', 'hello'];
  final List<String> _greetingAnimations = [
    'good_morning.json',
    'good_night.json',
    'sorry.json',
    'howareyou.json',
    'thank_you.json',
    'hello.json'
  ];

  void _nextAnimal() {
    setState(() {
      _currentIndex = (_currentIndex + 1) % _greeting.length;
    });
  }

  void _previousanimal() {
    setState(() {
      _currentIndex = (_currentIndex - 1) % _greeting.length;
      if (_currentIndex < 0) {
        _currentIndex = _greeting.length - 1;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: const Text('GREETINGS'),
        backgroundColor: Colors.transparent, // Make app bar transparent
        elevation: 0,
      ),
        extendBodyBehindAppBar: true,
      body: Stack(
        children: [
          // Background Image
          Positioned.fill(
            child: Opacity(
              opacity: 0.8, // Adjust the transparency as needed
              child: Image.asset(
                'assets/greetbg.jpg',
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Animations
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  _greeting[_currentIndex],
                  style: const TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 20),
                Lottie.asset(
                  'assets/${_greetingAnimations[_currentIndex]}',
                  width: 300,
                  height: 300,
                ),
              ],
            ),
          ),
        ],
      ),
        floatingActionButton: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Spacer(),
              FloatingActionButton(
                onPressed: _previousanimal,
                child: const Icon(Icons.arrow_back),

              ),
              Spacer(),
              Spacer(), Spacer(), Spacer(), Spacer(),
              FloatingActionButton(
                onPressed: _nextAnimal,
                child: const Icon(Icons.arrow_forward),
              ),
            ]));
  }
}
