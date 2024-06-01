import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class SpaceModuleApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // debugShowCheckedModeBanner: false,
      title: 'Space',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SpaceModuleHomePage(),
    );
  }
}

class SpaceModuleHomePage extends StatefulWidget {
  const SpaceModuleHomePage({super.key});

  @override
  _SpaceModuleHomePageState createState() => _SpaceModuleHomePageState();
}

class _SpaceModuleHomePageState extends State<SpaceModuleHomePage> {
  int _currentIndex = 0;
  final List<String> _seasons = ['Sun', 'Moon', 'Earth', 'Sky', 'Stars', 'Galaxy', 'Rocket', 'Comets'];
  final List<String> _seasonsAnimations = [
    'sun.json',
    'moon.json',
    'earth.json',
    'sky.json',
    'star.json',
    'galaxy.json',
    'rocket.json',
    'comet.json'
  ];

  void _nextAnimal() {
    setState(() {
      _currentIndex = (_currentIndex + 1) % _seasons.length;
    });
  }

  void _previousanimal() {
    setState(() {
      _currentIndex = (_currentIndex - 1) % _seasons.length;
      if (_currentIndex < 0) {
        _currentIndex = _seasons.length - 1;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SPACE'),
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
                'assets/space_background.jpeg',
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
                  _seasons[_currentIndex],
                  style: const TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 20),
                Lottie.asset(
                  'assets/${_seasonsAnimations[_currentIndex]}',
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

