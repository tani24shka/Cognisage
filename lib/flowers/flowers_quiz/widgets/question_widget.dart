import 'package:flutter/material.dart';
import '../../../flowers/flowers_quiz/constants.dart';


class QuestionWidget extends StatelessWidget {
  const QuestionWidget({Key? key, required this.question, required this.indexAction, required this.totalQuestions, required this.imagePath}) : super(key: key);

  final String question;
  final int indexAction;
  final int totalQuestions;
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 10.0),
        Text(
          'Question ${indexAction + 1}/$totalQuestions: $question',
          style: const TextStyle(
            fontSize: 24.0,
            color: neutral,
          ),
        ),
        Center(
          child: Image.asset(
            imagePath,
            width: 200.0,
            height: 200.0,
            fit: BoxFit.fill,
          ),
        ),
      ],
    );
  }
}
