import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
class HygieneModuleHomePage extends StatefulWidget {
  const HygieneModuleHomePage({super.key});

  @override
  _HygieneModuleHomePageState createState() => _HygieneModuleHomePageState();
}

class _HygieneModuleHomePageState extends State<HygieneModuleHomePage> {
  int _currentIndex = 0;
  final List<String> _HygieneName = ['Bath Daily', 'Brush your teeth', 'Exercise regularly', 'Wash your hands', 'Wear tidy clothes'];
  final List<String> _HygieneAnimations = [
     'bath (1).json',
    'brush teeth (1).json',
    'exercise (1).json',
    'hand wash (1).json',
    'wash (1).json',

  ];

  void _nextHygiene() {
    setState(() {
      _currentIndex = (_currentIndex + 1) % _HygieneName.length;
    });
  }

  void _previousHygiene() {
    setState(() {
      _currentIndex = (_currentIndex - 1) % _HygieneName.length;
      if (_currentIndex < 0) {
        _currentIndex = _HygieneName.length - 1;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hygiene'),
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
                'assets/hyg_mod.jpeg',
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
                  _HygieneName[_currentIndex],
                  style: const TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold, color: Colors.white),
                ),
                const SizedBox(height: 20),
                Lottie.asset(
                  'assets/${_HygieneAnimations[_currentIndex]}',
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
                onPressed: _previousHygiene,
                child: const Icon(Icons.arrow_back),

              ),
              Spacer(),
              Spacer(), Spacer(), Spacer(), Spacer(),
              FloatingActionButton(
                onPressed: _nextHygiene,
                child: const Icon(Icons.arrow_forward),
              ),
            ]));
  }
}
