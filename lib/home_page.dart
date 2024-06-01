import 'package:flutter/material.dart';
import 'package:werocks/fruits/fruits_base.dart';
import 'package:werocks/greetings/greetings_module.dart';
import 'package:werocks/seasons/seasons_base.dart';
import 'package:werocks/seasons/seasons_module.dart';
import 'package:werocks/senses/senses_base.dart';
import 'package:werocks/senses/senses_module.dart';
import 'package:werocks/shape/shape_base.dart';
import 'package:werocks/shape/shape_module.dart';
import 'package:werocks/stationary/stationary_base.dart';
import 'package:werocks/stationary/stationary_module.dart';
import 'package:werocks/vegetables/vegetables_base.dart';
import 'package:werocks/vegetables/vegetables_module.dart';
import 'Space/space_base.dart';
import 'Space/space_module.dart';
import 'animal/an_base.dart';
import 'animal/animal_module.dart';
import 'birds/birds_base.dart';
import 'birds/birds_module.dart';
import 'colors/colors_base.dart';
import 'colors/colors_module.dart';
import 'festivals/fest_base.dart';
import 'festivals/festivals_module.dart';
import 'flowers/flowers_base.dart';
import 'flowers/flowers_module.dart';
import 'fruits/fruit_module.dart';
import 'greetings/greeting_quiz/screens/home_screen.dart';
import 'greetings/greeting_base.dart';
import 'hygiene/hygiene_base.dart';
import 'hygiene/hygiene_module.dart';
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CogniSage'),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () {
            Navigator.pushNamed(context, 'navigation');
          },
        ),
      ),
      body: Stack(
        fit: StackFit.expand,
        children: [
          // Background image
          Image.asset(
            'assets/MainBg2.jpg', // Change to your background image path
            fit: BoxFit.cover,
          ),
          // Content
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                height: 10, // Adjust height as needed
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0), // Semi-transparent black background
                ),
                // child: Center(
                //   child: Text(
                //     'Home Page',
                //     style: TextStyle(
                //       color: Colors.black,
                //       fontSize: 30,
                //       fontWeight: FontWeight.bold,
                //     ),
                //   ),
                // ),
              ),
              Expanded(
                child: GridView.count(
                  crossAxisCount: 2,
                  children: List.generate(
                    14,
                        (index) {
                      String imageName;
                      String title;
                      switch(index) {
                        case 0:
                          imageName = 'greetings_icon.jpeg';
                          title = 'Greetings';
                          break;
                        case 1:
                          imageName = 'animal_icon.jpg';
                          title = 'Animals';
                          break;
                        case 2:
                          imageName = 'Shapes_icon.jpeg';
                          title = 'Shapes';
                          break;
                        case 3:
                          imageName = 'fruits_icon2.jpeg';
                          title = 'Fruits';
                          break;
                        case 4:
                          imageName = 'festive_icon.jpeg';
                          title = 'Festivals';
                          break;
                        case 5:
                          imageName = 'seasons_icon2.jpeg';
                          title = 'Seasons';
                          break;
                        case 6:
                          imageName = 'space_icon.jpg';
                          title = 'Space';
                          break;
                        case 7:
                          imageName = 'images/birds_icon.jpg';
                          title = 'Birds';
                          break;
                        case 8:
                          imageName = 'flower_icon.jpg';
                          title = 'Flowers';
                          break;
                        case 9:
                          imageName = 'color_icon.jpg';
                          title = 'Colors';
                          break;
                        case 10:
                          imageName = 'hygiene_icon.jpg';
                          title = 'Hygiene';
                          break;
                        case 11:
                          imageName = 'stationery_icon.webp';
                          title = 'Stationery';
                          break;
                        case 12:
                          imageName = 'veg_icon.jpg';
                          title = 'Vegetables';
                          break;
                        case 13:
                          imageName = 'senses_icon.jpg';
                          title = 'Sense Organs';
                          break;
                        default:
                          imageName = '';
                          title = '';
                          break;
                      }
                      return InkWell(
                        onTap: () {
                          // Handle tapping on the image
                          // Example: Navigate to another page
                          switch (index) {
                            case 0:
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => HomePage4(),
                                ),
                              );
                              break;
                            case 1:
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>  AnHomePage(),
                                ),
                              );
                              break;
                            case 2:
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>  ShHomePage(),
                                ),
                              );
                              break;
                            case 3:
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>  FrHomePage(),
                                ),
                              );
                              break;
                            case 4:
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>  FtHomePage(),
                                ),
                              );
                              break;
                            case 5:
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>  SnHomePage(),
                                ),
                              );
                              break;
                            case 6:
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>  SpHomePage(),
                                ),
                              );
                              break;
                            case 7:
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>  BdHomePage(),
                                ),
                              );
                              break;
                            case 8:
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>  FwHomePage(),
                                ),
                              );
                              break;
                            case 9:
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>  CrHomePage(),
                                ),
                              );
                              break;
                            case 10:
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>  HgHomePage(),
                                ),
                              );
                              break;
                            case 11:
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>  StHomePage(),
                                ),
                              );
                              break;
                            case 12:
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>  VgHomePage(),
                                ),
                              );
                              break;
                            case 13:
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>  SsHomePage(),
                                ),
                              );
                              break;
                          // Similarly handle other cases for Shapes and Fruits modules
                          }
                        },
                        child: Card(
                          elevation: 4,
                          child: Column(
                            children: [
                              Expanded(
                                child: Image.asset(
                                  'assets/$imageName', // Update image path here
                                  fit: BoxFit.cover,
                                  width: double.infinity,
                                  height: double.infinity,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(6.0),

                                child: Text(
                                  title,
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class GreetModuleApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Greeting',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: GreetingModuleHomePage(),
    );
  }
}

class AnimalModuleApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Animals',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const AnimalModuleHomePage(),
    );
  }
}
class FruitModuleApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fruit',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const FruitModuleHomePage(),
    );
  }
}
class ShapesModuleApp extends StatelessWidget {
  const ShapesModuleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shapes',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ShapesModuleHomePage(),
    );
  }
}
class FestivalsModuleApp extends StatelessWidget {
  const FestivalsModuleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shapes',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const FestivalsModuleHomePage(),
    );
  }
}
class SeasonModuleApp extends StatelessWidget {
  const SeasonModuleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Seasons',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SeasonModuleHomePage(),
    );
  }
}
class SpaceModuleApp extends StatelessWidget {
  const SpaceModuleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Space',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SpaceModuleHomePage(),
    );
  }
}
class BirdsModuleApp extends StatelessWidget {
  const BirdsModuleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Birds',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const BirdsModuleHomePage(),
    );
  }
}
class FlowersModuleApp extends StatelessWidget {
  const FlowersModuleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flowers',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const FlowersModuleHomePage(),
    );
  }
}
class ColorsModuleApp extends StatelessWidget {
  const ColorsModuleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Colors',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ColorsModuleHomePage(),
    );
  }
}
class HygieneModuleApp extends StatelessWidget {
  const HygieneModuleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Colors',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HygieneModuleHomePage(),
    );
  }
}
class StatModuleApp extends StatelessWidget {
  const StatModuleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Colors',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const StatModuleHomePage(),
    );
  }
}
class VegModuleApp extends StatelessWidget {
  const VegModuleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Colors',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const VegModuleHomePage(),
    );
  }
}
class SensesModuleApp extends StatelessWidget {
  const SensesModuleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sense Organs',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SensesModuleHomePage(),
    );
  }
}