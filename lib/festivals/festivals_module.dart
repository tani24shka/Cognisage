import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
class FestivalsModuleHomePage extends StatefulWidget {
  const FestivalsModuleHomePage({super.key});

  @override
  _FestivalsModuleHomePageState createState() => _FestivalsModuleHomePageState();
}

class _FestivalsModuleHomePageState extends State<FestivalsModuleHomePage> {
  int _currentIndex = 0;
  final List<String> _FestivalName = ['Easter', 'Christmas', 'Holi', 'Diwali', 'Makar Sankranti', 'Eid', 'Halloween'];
  final List<String> _FestivalsAnimations = [
    'easter.json',
    'christmas.json',
    'holi.json',
    'diwali.json',
    'kites.json',
    'eid.json',
    'halloween.json'
  ];

  void _nextfestivals() {
    setState(() {
      _currentIndex = (_currentIndex + 1) % _FestivalName.length;
    });
  }

  void _previousfestivals() {
    setState(() {
      _currentIndex = (_currentIndex - 1) % _FestivalName.length;
      if (_currentIndex < 0) {
        _currentIndex = _FestivalName.length - 1;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Scaffold(
      appBar: AppBar(
        title: const Text('FESTIVALS'),
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
                'assets/festive_bg4.jpeg',
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
                  _FestivalName[_currentIndex],
                  style: const TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold,color: Colors.black),
                ),
                const SizedBox(height: 20),
                Lottie.asset(
                  'assets/${_FestivalsAnimations[_currentIndex]}',
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
                onPressed: _previousfestivals,
                child: const Icon(Icons.arrow_back),

              ),
              Spacer(),
              Spacer(), Spacer(), Spacer(), Spacer(),
              FloatingActionButton(
                onPressed: _nextfestivals,
                child: const Icon(Icons.arrow_forward),
              ),
            ])));
  }
}

