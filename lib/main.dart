import 'package:flutter/material.dart';
import 'package:werocks/login.dart';
import 'package:werocks/register.dart';
import 'package:werocks/seasons/seasons_quiz/screens/home_screen.dart';
import 'package:werocks/senses/senses_quiz/screens/home_screen.dart';
import 'package:werocks/shape/shapes_quiz/screens/home_screen.dart';
import 'package:werocks/stationary/stationary_quiz/screens/home_screen.dart';
import 'package:werocks/vegetables/vegetables_quiz/screens/home_screen.dart';
import 'NavBar.dart';
import 'home_page.dart';
import 'animal/animal_quiz/screens/home_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'fruits/fruit_quiz/screens/home_screen.dart';
import 'greetings/greeting_base.dart';
import 'home_page.dart';
import 'greetings/greeting_quiz/screens/home_screen.dart';
import 'greetings/greetings_module.dart';
import 'festivals/festival_quiz/screens/home_screen.dart';
import 'Space/space_quiz/screens/home_screen.dart';
import 'birds/birds_quiz/screens/home_screen.dart';
import 'colors/colors_quiz/screens/home_screen.dart';
import 'flowers/flowers_quiz/screens/home_screen.dart';
import 'hygiene/hygiene_quiz/screens/home_screen.dart';

import 'package:cloud_firestore/cloud_firestore.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,

  );
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: 'login',
    routes: {
      'login':(context)=>MyLogin(),
      'register':(context)=>MyRegister(),
      'home':(context)=>HomePage(),
      'navigation':(context)=>NavBar(),
      'greet_module':(context)=>GreetingModule(),
      'greet_quiz': (context) => GreetScreen(),
      'animal_module':(context)=>AnimalModule(),
      'animal_quiz': (context) => AnimalScreen(),
      'fruit_module':(context)=>FruitModule(),
      'fruit_quiz': (context) => FruitScreen(),
      'shape_module':(context)=>ShapeModule(),
      'shape_quiz': (context) => ShapeScreen(),
      'festival_module':(context)=>FestivalModule(),
      'festival_quiz': (context) => FestivalsScreen(),
      'season_module':(context)=>SeasonModule(),
      'season_quiz': (context) => SeasonScreen(),
      'space_module':(context)=>SpaceModule(),
      'space_quiz': (context) => SpaceScreen(),
      'birds_module':(context)=>BirdModule(),
      'birds_quiz': (context) => BirdsScreen(),
      'flower_module':(context)=>FlowerModule(),
      'flower_quiz': (context) => FlowerScreen(),
      'color_module':(context)=>ColorModule(),
      'color_quiz': (context) => ColorScreen(),
      'hygiene_module':(context)=>HygienesModule(),
      'hygiene_quiz': (context) => HygieneScreen(),
      'stat_module':(context)=>StatsModule(),
      'stat_quiz': (context) => StatScreen(),
      'veg_module':(context)=>VegsModule(),
      'veg_quiz': (context) => VegScreen(),
      'senses_module':(context)=>SenseModule(),
      'senses_quiz': (context) => SenseScreen(),
    },
  ));
}

class GreetingModule extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Greeting',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: GreetingModuleApp(),
    );
  }
}

class AnimalModule extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Animal',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: AnimalModuleApp(),
    );
  }
}
class FruitModule extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Animal',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: FruitModuleApp(),
    );
  }
}
class ShapeModule extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shapes',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ShapesModuleApp(),
    );
  }
}

class FestivalModule extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Festivals',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: FestivalsModuleApp(),
    );
  }
}

class SeasonModule extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Seasons',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SeasonModuleApp(),
    );
  }
}

class SpaceModule extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Seasons',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SpaceModuleApp(),
    );
  }
}

class BirdModule extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Birds',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: BirdsModuleApp(),
    );
  }
}

class FlowerModule extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flowers',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: FlowersModuleApp(),
    );
  }
}

class ColorModule extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flowers',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ColorsModuleApp(),
    );
  }
}

class HygienesModule extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hygiene',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HygieneModuleApp(),
    );
  }
}

class StatsModule extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Stationery',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: StatModuleApp(),
    );
  }
}

class VegsModule extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Vegetables',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: VegModuleApp(),
    );
  }
}

class SenseModule extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sense Organs',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SensesModuleApp(),
    );
  }
}