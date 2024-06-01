import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
class ShapesModuleHomePage extends StatefulWidget {
  const ShapesModuleHomePage({super.key});

  @override
  _ShapesModuleHomePageState createState() => _ShapesModuleHomePageState();
}

class _ShapesModuleHomePageState extends State<ShapesModuleHomePage> {
  int _currentIndex = 0;
  final List<String> _animalNames = ['Circle', 'Line', 'Triangle', 'Square', 'Rectangle', 'Star', 'Heart', 'Oval'];
  final List<String> _animalAnimations = [
    'circle.json',
    'line.json',
    'triangle.json',
    'square.json',
    'rectangle.json',
    'stars.json',
    'heart.json',
    'oval.json'
  ];

  void _nextAnimal() {
    setState(() {
      _currentIndex = (_currentIndex + 1) % _animalNames.length;
    });
  }

  void _previousanimal() {
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
        title: const Text('SHAPES'),
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
                'assets/bgshape.jpeg',
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

