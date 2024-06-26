import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:werocks/NavBar.dart';
import 'home_page.dart';
import 'login.dart';

class Authpage extends StatelessWidget {
  const Authpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context,snapshot){
          if(snapshot.hasData){
            return HomePage();
          }
          else
            {
              return const MyLogin();
            }
        },
      ),
    );
  }
}
