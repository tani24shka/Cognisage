import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'ForgetScreen.dart';
import 'home_page.dart';

class MyLogin extends StatefulWidget {
  const MyLogin({super.key});

  @override
  State<MyLogin> createState() => _MyLoginState();
}

class _MyLoginState extends State<MyLogin> {
  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    TextEditingController _email=TextEditingController();
    TextEditingController _password=TextEditingController();
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/login.png'), fit: BoxFit.cover)),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Stack(
            children: [
              Container(
                padding: EdgeInsets.only(left:35,top:150),
                child: const Text('Welcome Back!',style: TextStyle(
                  color:Colors.black,
                  fontSize:25
                ),
                ),
              ),
              SingleChildScrollView(
                child: Container(
                  padding: EdgeInsets.only(top:MediaQuery.of(context).size.height*0.5,right: 35,left:35),
                  child:Column(
                    children: [
                      TextField(
                        controller: _email,
                        decoration: InputDecoration(
                          fillColor: Colors.grey.shade100,
                          filled: true,
                          hintText:'Email',
                          border: OutlineInputBorder(
                            borderRadius:BorderRadius.circular(10))),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      TextField(
                        controller: _password,
                        obscureText:true,
                        decoration: InputDecoration(
                            fillColor: Colors.grey.shade100,
                            filled: true,
                            hintText:'Password',
                            border: OutlineInputBorder(
                                borderRadius:BorderRadius.circular(10))),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          TextButton(onPressed: () async {
                            try {
                              final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
                                  email: _email.text.toString(),
                                  password: _password.text.toString()
                              );
                              // if(FirebaseAuth.instance.currentUser!=null)
                              //   {
                              //     Navigator.pushNamed(context, 'home_page');
                              //   }
                              // else
                              //   {
                              //     Navigator.pushNamed(context, 'register');
                              //   }
                              if (FirebaseAuth.instance.currentUser != null) {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => HomePage()),
                                );
                              } else {
                                Navigator.pushNamed(context, 'register');
                              }
                            } on FirebaseAuthException catch (e) {
                              if (e.code == 'user-not-found') {
                                print('No user found for that email.');
                              } else if (e.code == 'wrong-password') {
                                print('Wrong password provided for that user.');
                              }
                            }
                            // Navigator.pushNamed(context, 'register');
                          },
                            child: Text(
                            'Sign In',
                            style: TextStyle(
                                color: Color(0xff4c505b),
                                fontSize: 27,
                                fontWeight: FontWeight.w700),

                        ),

                          )
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
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          TextButton(onPressed: (){
                            Navigator.pushNamed(context, 'register');
                          }, child: Text('Sign Up',style: TextStyle(
                            decoration: TextDecoration.underline,
                            fontSize: 15,
                            color: Color(0xff4c505b),
                          ),
                          )),
                          TextButton(onPressed: (){
                            Navigator.push(context,MaterialPageRoute(builder: (context) => ForgetScreen())
                            );
                          }, child: Text('Forgot Password',style: TextStyle(
                            decoration: TextDecoration.underline,
                            fontSize: 15,
                            color: Color(0xff4c505b),
                          ),
                          ),
                          )
                        ],
                      )
                      ]),
                ),
              )
            ]),
        ),
    );
  }
}
