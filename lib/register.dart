 //import 'dart:js';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:werocks/auth.dart';
import 'package:werocks/login.dart';

class MyRegister extends StatefulWidget {
  const MyRegister({Key?key}):super(key:key);

  @override
  _MyRegisterState createState() => _MyRegisterState();
}

class _MyRegisterState extends State<MyRegister> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery
        .of(context)
        .size;
    TextEditingController _name = TextEditingController();
    TextEditingController _email = TextEditingController();
    TextEditingController _password = TextEditingController();
    home:const Authpage();
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/register.png'), fit: BoxFit.cover)),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          //elevation: 0,
        ),
        backgroundColor: Colors.transparent,
        body: Stack(
            children: [
              Container(
                padding: EdgeInsets.only(left: 35, top: 150),
                child: const Text('Create Account', style: TextStyle(
                    color: Colors.black,
                    fontSize: 25
                ),
                ),
              ),
              SingleChildScrollView(
                child: Container(
                  padding: EdgeInsets.only(top: MediaQuery
                      .of(context)
                      .size
                      .height * 0.28, right: 35, left: 35),
                  child: Column(
                      children: [
                        TextField(
                          controller: _name,
                          decoration: InputDecoration(
                              fillColor: Colors.grey.shade100,
                              filled: true,
                              hintText: 'Name',
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10))),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        TextField(
                          controller: _email,
                          decoration: InputDecoration(
                              fillColor: Colors.grey.shade100,
                              filled: true,
                              hintText: 'Email',
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10))),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        TextField(
                          controller: _password,
                          obscureText: true,
                          decoration: InputDecoration(
                              fillColor: Colors.grey.shade100,
                              filled: true,
                              hintText: 'Password',
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10))),
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            TextButton(onPressed: () async {
                              if (_name.text.isEmpty || _email.text.isEmpty ||
                                  _password.text.isEmpty) {
                                var snackBar = SnackBar(
                                  content: Text('empty field'),
                                  backgroundColor: Colors.red,);
                                ScaffoldMessenger.of(context).showSnackBar(
                                    snackBar);
                              }
                              else {
                                try {
                                  final credential = await FirebaseAuth.instance
                                      .createUserWithEmailAndPassword(
                                    email: _email.text.toString(),
                                    password: _password.text.toString(),
                                  );

                                  if (credential != null) {
                                    insertdata(
                                        _name.text.toString(),
                                        _email.text.toString(),
                                        _password.text.toString(),
                                        credential.user?.uid);
                                  }
                                  else {
                                    var snackBar = SnackBar(
                                      content: Text("Null user"),
                                      backgroundColor: Colors.grey,);
                                    ScaffoldMessenger.of(context).showSnackBar(
                                        snackBar);
                                  }
                                } on FirebaseAuthException catch (e) {
                                  if (e.code == 'weak-password') {
                                    var snackBar = SnackBar(
                                      content: Text('weak password'),
                                      backgroundColor: Colors.grey,);
                                    ScaffoldMessenger.of(context).showSnackBar(
                                        snackBar);
                                  } else if (e.code == 'email-already-in-use') {
                                    var snackBar = SnackBar(content: Text(
                                        'Account already cretaed with this email'),
                                      backgroundColor: Colors.grey,);
                                    ScaffoldMessenger.of(context).showSnackBar(
                                        snackBar);
                                  }
                                  else {
                                    Navigator.pushNamed(context, '');
                                  }
                                } catch (e) {
                                  var snackBar = SnackBar(
                                    content: Text(e.toString()),
                                    backgroundColor: Colors.grey,);
                                  ScaffoldMessenger.of(context).showSnackBar(
                                      snackBar);
                                }
                              }
                              // Navigator.pushNamed(context, 'login');
                            },
                                child: Text(
                                  'Sign Up',
                                  style: TextStyle(
                                      decoration: TextDecoration.underline,
                                      color: Color(0xff4c505b),
                                      fontSize: 27,
                                      fontWeight: FontWeight.w700),
                                )
                            ),
                            // CircleAvatar(
                            //   radius: 30,
                            //   backgroundColor: Color(0xff4c505b),
                            //   child: IconButton(
                            //     color: Colors.white,
                            //     onPressed: (){},
                            //     icon: Icon(Icons.arrow_forward),
                            //   ),
                            // )
                          ],
                        ),
                        // Row(
                        //   mainAxisAlignment: MainAxisAlignment.spaceAround,
                        //   children: [
                        //     TextButton(onPressed: (){
                        //       Navigator.pushNamed(context, 'login');
                        //     }, child: Text('Home Page',style: TextStyle(
                        //       decoration: TextDecoration.underline,
                        //       fontSize: 15,
                        //       color: Color(0xff4c505b),
                        //     ),
                        //     )),
                        //
                        //   ],
                        // )
                      ]),
                ),
              )
            ]),
      ),
    );
  }

  void insertdata(String name, email, password, userid) {
    FirebaseFirestore dp = FirebaseFirestore.instance;
    final user = <String, dynamic>{
      "name": name,
      "email": email,
      "password": password,
      "id": userid
    };
    dp.collection("users").doc(userid).set(user).onError((e, _) =>
        print("Error writing document: $e"));
    var snackBar = SnackBar(
      content: Text("sucessfully inserted"), backgroundColor: Colors.grey,);
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
    Navigator.push(context, MaterialPageRoute(builder: (context) => MyLogin()));
  }
}