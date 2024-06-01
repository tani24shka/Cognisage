import 'package:werocks/space/space_quiz/Models/questions.dart';
import 'package:flutter/material.dart';
import '../../../constants.dart';
import '../widgets/question_widget.dart';
import '../widgets/next_button.dart';
import '../widgets/option_card.dart';
import '../widgets/result_box.dart';

class SpaceScreen extends StatefulWidget {
  const SpaceScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<SpaceScreen> {
  List<Question> _questions = [
    Question(id: '10', title: 'what is our planet called?', options: {'mars': false, 'earth': true, 'venus': false, 'jupiter': false},imagePath: 'assets/images/earth.png'),
    Question(id: '11', title: 'which star shines the brightest during night?',options: {'sun': false, 'moon': true, 'mars': false, 'clouds': false},imagePath: 'assets/images/moon.png' ),
    Question(id: '12', title: 'what is the natural source of light on light?', options: {'sun': true, 'moon': false, 'earth': false, 'stars': false},imagePath: 'assets/images/sun.png'),
    Question(id: '13', title: 'what is the colour of sky during day time?', options: {'red': false, 'blue': true, 'green': false, 'orange': false},imagePath:'assets/images/sky.png'),
    Question(id: '14', title: 'What is the name of our galaxy?', options: {'comet': false, 'malin': false, 'cartwheel': false, 'milky way': true},imagePath:'assets/images/galaxy.png'),
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