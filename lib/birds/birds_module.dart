import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
class BirdsModuleHomePage extends StatefulWidget {
  const BirdsModuleHomePage({super.key});

  @override
  _BirdsModuleHomePageState createState() => _BirdsModuleHomePageState();
}

class _BirdsModuleHomePageState extends State<BirdsModuleHomePage> {
  int _currentIndex = 0;
  final List<String> _BirdsName = ['Eagle', 'Owl', 'Parrot', 'Sparrow','Peacock','Duck','Penguin', 'Pigeon'];
  final List<String> _BirdsAnimations = [
    'bird1.json',
    'bird2.json',
    'bird3.json',
    'bird4.json',
    'peacock.json',
    'duck.json',
    'penguin.json',
    'pigeon.json',
  ];

  void _nextbirds() {
    setState(() {
      _currentIndex = (_currentIndex + 1) % _BirdsName.length;
    });
  }

  void _previousbirds() {
    setState(() {
      _currentIndex = (_currentIndex - 1) % _BirdsName.length;
      if (_currentIndex < 0) {
        _currentIndex = _BirdsName.length - 1;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Birds'),
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
                'assets/images/birds_back.jpg',
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
                  _BirdsName[_currentIndex],
                  style: const TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 20),
                Lottie.asset(
                  'assets/${_BirdsAnimations[_currentIndex]}',
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
                onPressed: _previousbirds,
                child: const Icon(Icons.arrow_back),

              ),
              Spacer(),
              Spacer(), Spacer(), Spacer(), Spacer(),
              FloatingActionButton(
                onPressed: _nextbirds,
                child: const Icon(Icons.arrow_forward),
              ),
            ]));
  }
}
