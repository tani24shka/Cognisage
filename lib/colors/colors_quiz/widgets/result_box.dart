import 'package:flutter/material.dart';
import '../../../colors/colors_quiz/constants.dart';

class ResultBox extends StatelessWidget {
  const ResultBox({Key? key, required this.result, required this.questionLength,required this.onPressed}) : super(key: key);
  final int result;
  final int questionLength;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: background,
      content: Padding(padding: const EdgeInsets.all(70),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text('Result',style: TextStyle(color: neutral,fontSize: 22),
            ),
            const SizedBox(height: 20),
            CircleAvatar(
              child: Text(
                '$result/$questionLength',
                style: TextStyle(fontSize: 30),
              ),
              radius: 70,
              backgroundColor: result == questionLength/2?Colors.yellow:result<questionLength/2?incorrect:correct,

            ),
            const SizedBox(height: 20),
            Text(result == questionLength/2?'Almost There':result<questionLength/2?'Try Again':'Great!',
              style: TextStyle(color: neutral),
            ),
            const SizedBox(height: 25),
            GestureDetector(
              onTap: onPressed,
              child: const Text('Start Over',style: TextStyle(color: Colors.blue,fontSize: 20,letterSpacing: 1.0,),),
            )
          ],
        ),),
    );
  }
}

