import 'package:flutter/material.dart';
import '../../../stationary/stationary_quiz/Models/questions.dart';
import '../../../stationary/stationary_quiz/constants.dart';
import '../widgets/question_widget.dart';
import '../widgets/next_button.dart';
import '../widgets/option_card.dart';
import '../widgets/result_box.dart';

class StatScreen extends StatefulWidget {
  const StatScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<StatScreen> {
  List<Question> _questions = [
    Question(id: '10', title: 'Which of the following is not a type of writing instrument?', options: {'pencil': false, 'eraser': true, 'pen': false, 'hightlighter': false},imagePath: 'assets/images/eraser1.png'),
    Question(id: '11', title: 'What is the primary purpose of a ruler?',options: {'Writing': false, 'Measuring length': true, 'Drawing Shapes': false, 'Cutting paper': false},imagePath: 'assets/images/ruler1.png' ),
    Question(id: '12', title: 'Which of the following is used to cut paper?', options: {'scissors': true, 'highlighter': false, 'pen': false, 'pencil': false},imagePath: 'assets/images/scissors.png'),
    Question(id: '13', title: 'Which of the following stationery items is used for sharpening pencils?', options: {'pen': false, 'sharpner': true, 'stapler': false, 'scissors': false},imagePath:'assets/images/sharpner1.png'),
    Question(id: '14', title: 'Which of the following is used to paste things?', options: {'sharpner': false, 'pen': false, 'pencil': false, 'glue': true},imagePath:'assets/images/glue1.png'),
  ];

  int index = 0;
  int score = 0;
  bool isPressed = false;
  bool isAlreadySelected = false;

  void nextQuestion() {
    if (index == _questions.length - 1) {
      showDialog(
        context: context,
        barrierDismissible: false,
        builder: (ctx) => ResultBox(
          result: score,
          questionLength: _questions.length,
          onPressed: startOver,
        ),
      );
    } else {
      if (isPressed) {
        setState(() {
          index++;
          isPressed = false;
          isAlreadySelected = false;
        });
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('please select any option'),
            behavior: SnackBarBehavior.floating,
            margin: EdgeInsets.symmetric(vertical: 20),
          ),
        );
      }
    }
  }

  void checkAnswerAndUpdate(bool value) {
    if (isAlreadySelected) {
      return;
    } else {
      if (value == true) {
        score++;
      }
      setState(() {
        isPressed = true;
        isAlreadySelected = true;
      });
    }
  }

  void startOver() {
    setState(() {
      index = 0;
      score = 0;
      isPressed = false;
      isAlreadySelected = false;
    });
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      appBar: AppBar(
        title: const Text('Quiz', style: TextStyle(fontSize: 24.0, color: neutral)),
        backgroundColor: background,
        shadowColor: Colors.transparent,
        actions: [
          // Padding(
          //   padding: const EdgeInsets.all(18),
          //   child: Text(
          //     'Score: $score',
          //     style: const TextStyle(fontSize: 18),
          //   ),
          // ),
          Padding(
            padding: const EdgeInsets.all(18),
            child: Text(
              'Score: $score',
              style: TextStyle(
                fontSize: 18,
                color: Colors.white, // Set the color to white
              ),
            ),
          ),
        ],
      ),
      body: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 15),

        child: Column(

          children: [
            // Image.asset('assets/images/project1.jpg'),  //edited
            QuestionWidget(
              question: _questions[index].title,
              indexAction: index,
              totalQuestions: _questions.length,
              imagePath: _questions[index].imagePath,
            ),
            const Divider(color: neutral),
            const SizedBox(height: 25),
            for (int i = 0; i < _questions[index].options.length; i++)
              GestureDetector(
                onTap: () => checkAnswerAndUpdate(_questions[index].options.values.toList()[i]),
                child: OptionCard(
                  option: _questions[index].options.keys.toList()[i],
                  color: isPressed
                      ? _questions[index].options.values.toList()[i] == true
                      ? correct
                      : incorrect
                      : neutral,
                ),
              ),
          ],
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.symmetric(),
        // child: Column(
        //     children : [
        //     Image.asset('assets/images/project2.jpg'),
        //  NextButton(
        //    nextQuestion: nextQuestion,
        //  ),
        //    ],
        // // ),

        child: NextButton(
          nextQuestion: nextQuestion,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}