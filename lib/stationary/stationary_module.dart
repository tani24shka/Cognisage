import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
class StatModuleHomePage extends StatefulWidget {
  const StatModuleHomePage({super.key});

  @override
  _StatModuleHomePageState createState() => _StatModuleHomePageState();
}

class _StatModuleHomePageState extends State<StatModuleHomePage> {
  int _currentIndex = 0;
  final List<String> _StatName = ['eraser', 'pencil', 'ruler', 'scissors'];
  final List<String> _StatAnimations = [
    'eraser.json',
    'paper.json',
    'ruler.json',
    'scissors.json',
  ];

  void _nextstat() {
    setState(() {
      _currentIndex = (_currentIndex + 1) % _StatName.length;
    });
  }

  void _previousstat() {
    setState(() {
      _currentIndex = (_currentIndex - 1) % _StatName.length;
      if (_currentIndex < 0) {
        _currentIndex = _StatName.length - 1;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stationery'),
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
                'assets/stationary_bg.jpg',
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
                  _StatName[_currentIndex],
                  style: const TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 20),
                Lottie.asset(
                  'assets/${_StatAnimations[_currentIndex]}',
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
                onPressed: _previousstat,
                child: const Icon(Icons.arrow_back),

              ),
              Spacer(),
              Spacer(), Spacer(), Spacer(), Spacer(),
              FloatingActionButton(
                onPressed: _nextstat,
                child: const Icon(Icons.arrow_forward),
              ),
            ]));
  }
}

