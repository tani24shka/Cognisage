import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
class FruitModuleHomePage extends StatefulWidget {
  const FruitModuleHomePage({super.key});

  @override
  _FruitModuleHomePageState createState() => _FruitModuleHomePageState();
}

class _FruitModuleHomePageState extends State<FruitModuleHomePage> {
  int _currentIndex = 0;
  final List<String> _Fruit = ['apple', 'mango', 'orange', 'pineapple', 'watermelon', 'banana'];
  final List<String> _FruitAnimations = [
    'apple.json',
    'mango.json',
    'orange.json',
    'pineapple.json',
    'watermelon.json',
    'banana.json'
  ];

  void _nextfruit() {
    setState(() {
      _currentIndex = (_currentIndex + 1) % _Fruit.length;
    });
  }

  void _previousfruit() {
    setState(() {
      _currentIndex = (_currentIndex - 1) % _Fruit.length;
      if (_currentIndex < 0) {
        _currentIndex = _Fruit.length - 1;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FRUIT'),
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
                'assets/bgfinal.jpg',
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
                  _Fruit[_currentIndex],
                  style: const TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 20),
                Lottie.asset(
                  'assets/${_FruitAnimations[_currentIndex]}',
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
                onPressed: _previousfruit,
                child: const Icon(Icons.arrow_back),

              ),
              Spacer(),
              Spacer(), Spacer(), Spacer(), Spacer(),
              FloatingActionButton(
                onPressed: _nextfruit,
                child: const Icon(Icons.arrow_forward),
              ),
            ]));
  }
}
