import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
class ColorsModuleHomePage extends StatefulWidget {
  const ColorsModuleHomePage({super.key});

  @override
  _ColorsModuleHomePageState createState() => _ColorsModuleHomePageState();
}

class _ColorsModuleHomePageState extends State<ColorsModuleHomePage> {
  int _currentIndex = 0;
  final List<String> _ColorName = ['Pink', 'Blue', 'Red', 'Black'];
  final List<String> _ColorAnimations = [
    'red.json',
    'blue.json',
    'white.json',
    'black.json',
  ];

  void _nextColors() {
    setState(() {
      _currentIndex = (_currentIndex + 1) % _ColorName.length;
    });
  }

  void _previousColors() {
    setState(() {
      _currentIndex = (_currentIndex - 1) % _ColorName.length;
      if (_currentIndex < 0) {
        _currentIndex = _ColorName.length - 1;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Colors'),
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
                'assets/stationary_base.jpg',
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
                  _ColorName[_currentIndex],
                  style: const TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 20),
                Lottie.asset(
                  'assets/${_ColorAnimations[_currentIndex]}',
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
                onPressed: _previousColors,
                child: const Icon(Icons.arrow_back),

              ),
              Spacer(),
              Spacer(), Spacer(), Spacer(), Spacer(),
              FloatingActionButton(
                onPressed: _nextColors,
                child: const Icon(Icons.arrow_forward),
              ),
            ]));
  }
}