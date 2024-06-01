import 'package:flutter/material.dart' show AppBar, BoxFit, BuildContext, Center, Colors, Column, CrossAxisAlignment, FloatingActionButton, FontWeight, Icon, Icons, Image, MainAxisAlignment, Opacity, Positioned, Row, Scaffold, SizedBox, Spacer, Stack, State, StatefulWidget, Text, TextStyle, Widget;
import 'package:lottie/lottie.dart';
class VegModuleHomePage extends StatefulWidget {
  const VegModuleHomePage({super.key});

  @override
  _VegModuleHomePageState createState() => _VegModuleHomePageState();
}

class _VegModuleHomePageState extends State<VegModuleHomePage> {
  int _currentIndex = 0;
  final List<String> _VegName = ['beetroot', 'carrot', 'mushroom', 'onion'];
  final List<String> _VegAnimations = [
    'beetroot.json',
    'carrot.json',
    'mushroom.json',
    'onion.json',
  ];

  void _nextveg() {
    setState(() {
      _currentIndex = (_currentIndex + 1) % _VegName.length;
    });
  }

  void _previousveg() {
    setState(() {
      _currentIndex = (_currentIndex - 1) % _VegName.length;
      if (_currentIndex < 0) {
        _currentIndex = _VegName.length - 1;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Vegetables'),
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
                'assets/veg_bg1.jpg',
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
                  _VegName[_currentIndex],
                  style: const TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 20),
                Lottie.asset(
                  'assets/${_VegAnimations[_currentIndex]}',
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
                onPressed: _previousveg,
                child: const Icon(Icons.arrow_back),

              ),
              Spacer(),
              Spacer(), Spacer(), Spacer(), Spacer(),
              FloatingActionButton(
                onPressed: _nextveg,
                child: const Icon(Icons.arrow_forward),
              ),
            ]));
  }
}

