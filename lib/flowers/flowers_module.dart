import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
class FlowersModuleHomePage extends StatefulWidget {
  const FlowersModuleHomePage({super.key});

  @override
  _FlowersModuleHomePageState createState() => _FlowersModuleHomePageState();
}

class _FlowersModuleHomePageState extends State<FlowersModuleHomePage> {
  int _currentIndex = 0;
  final List<String> _FlowerName = ['Rose', 'Sunflower', 'Tulip', 'Petunia', 'Lotus'];
  final List<String> _FlowerAnimations = [
    'rose.json',
    'sunflower.json',
    'tulip (1).json',
    'petunia.json',
    'lotus (1).json'
  ];

  void _nextflower() {
    setState(() {
      _currentIndex = (_currentIndex + 1) % _FlowerName.length;
    });
  }

  void _previousflower() {
    setState(() {
      _currentIndex = (_currentIndex - 1) % _FlowerName.length;
      if (_currentIndex < 0) {
        _currentIndex = _FlowerName.length - 1;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flowers'),
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
                'assets/flowers_bg.jpeg',
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
                  _FlowerName[_currentIndex],
                  style: const TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 20),
                Lottie.asset(
                  'assets/${_FlowerAnimations[_currentIndex]}',
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
                onPressed: _previousflower,
                child: const Icon(Icons.arrow_back),

              ),
              Spacer(),
              Spacer(), Spacer(), Spacer(), Spacer(),
              FloatingActionButton(
                onPressed: _nextflower,
                child: const Icon(Icons.arrow_forward),
              ),
            ]));
  }
}
