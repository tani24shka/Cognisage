import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ForgetScreen extends StatefulWidget {
  const ForgetScreen({Key?key}):super(key:key);

  @override
  State<ForgetScreen> createState() => _ForgetScreenState();
}

class Utils {
  static void toastMessage(String message) {
    Fluttertoast.showToast(
      msg: message,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 1,
      backgroundColor: Colors.black54,
      textColor: Colors.white,
      fontSize: 16.0,
    );
  }
}

class _ForgetScreenState extends State<ForgetScreen> {
  final emailController =TextEditingController();
  final auth=FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('forget password'),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextFormField(
                controller: emailController,
                decoration: InputDecoration(hintText: 'email',),
              ),
              SizedBox(height: 40,),

              ElevatedButton(
                onPressed: () {
                  auth.sendPasswordResetEmail(
                      email: emailController.text.toString()).then((value) {
                    Utils.toastMessage(
                        'We have sent you an email to recover your password. Please check your email.');
                  }).onError((error, stackTrace) {
                    Utils.toastMessage(error.toString());
                  });
                },
                child: Text('Forgot'),),
            ],
          ),

          // ElevatedButton(title:'forgot',onTap:(){
          //   auth.sendPasswordResetEmail(email: email).then((value){
          //     Utils().toastMessage('we have sent you email to recover password, please check your email');
          //   }).onError((error, stackTrace){
          //     Utils().toastMessage(error.toString());
          //   });

        )
    );
  }
  }

