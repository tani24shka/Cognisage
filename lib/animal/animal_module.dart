
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class AnimalModuleHomePage extends StatefulWidget {
  const AnimalModuleHomePage({super.key});
  @override
  _AnimalModuleHomePageState createState() => _AnimalModuleHomePageState();
}
class _AnimalModuleHomePageState extends State<AnimalModuleHomePage> {
  int _currentIndex = 0;
  final List<String> _animalNames = ['Cat', 'Cow', 'Dog', 'Lion', 'Rabbit', 'Tiger'];
  final List<String> _animalAnimations = [
    'cat.json',
    'cow.json',
    'dog.json',
    'lion.json',
    'rabbit.json',
    'tiger.json'
  ];
  void _nextAnimal() {
    setState(() {
      _currentIndex = (_currentIndex + 1) % _animalNames.length;
    });
  }

  void _previousAnimal() {
    setState(() {
      _currentIndex = (_currentIndex - 1) % _animalNames.length;
      if (_currentIndex < 0) {
        _currentIndex = _animalNames.length - 1;
      }
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animals'),
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
                'assets/forest2.jpg',
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
                  _animalNames[_currentIndex],
                  style: const TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 20),
                Lottie.asset(
                  'assets/${_animalAnimations[_currentIndex]}',
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
        onPressed: _previousAnimal,
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
