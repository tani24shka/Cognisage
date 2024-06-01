import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class SensesModuleApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // debugShowCheckedModeBanner: false,
      title: 'Senses',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SensesModuleHomePage(),
    );
  }
}

class SensesModuleHomePage extends StatefulWidget {
  const SensesModuleHomePage({super.key});

  @override
  _SensesModuleHomePageState createState() => _SensesModuleHomePageState();
}

class _SensesModuleHomePageState extends State<SensesModuleHomePage> {
  int _currentIndex = 0;
  final List<String> _sense = ['Tongue', 'Eyes', 'Nose', 'Ears', 'Skin'];
  final List<String> _senseAnimations = [
    'tongue.json',
    'eyes (1).json',
    'nose.json',
    'ear.json',
    'skin.json'
  ];

  void _nextSense() {
    setState(() {
      _currentIndex = (_currentIndex + 1) % _sense.length;
    });
  }

  void _previousSense() {
    setState(() {
      _currentIndex = (_currentIndex - 1) % _sense.length;
      if (_currentIndex < 0) {
        _currentIndex = _sense.length - 1;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SENSE ORGANS'),
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
                'assets/sense_mod.jpg',
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
                  _sense[_currentIndex],
                  style: const TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 20),
                Lottie.asset(
                  'assets/${_senseAnimations[_currentIndex]}',
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
                onPressed: _previousSense,
                child: const Icon(Icons.arrow_back),

              ),
              Spacer(),
              Spacer(), Spacer(), Spacer(), Spacer(),
              FloatingActionButton(
                onPressed: _nextSense,
                child: const Icon(Icons.arrow_forward),
              ),
            ]));
  }
}

