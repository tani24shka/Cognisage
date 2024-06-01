import 'package:flutter/material.dart';
import '../../../constants.dart';
import '../../../festivals/festival_quiz/Models/questions.dart';
import '../widgets/question_widget.dart';
import '../widgets/next_button.dart';
import '../widgets/option_card.dart';
import '../widgets/result_box.dart';

class FestivalsScreen extends StatefulWidget {
  const FestivalsScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<FestivalsScreen> {
  List<Question> _questions = [
    Question(id: '10', title: 'Which festival is also known as the Festival of Lights?', options: {'ThanksGiving': false, 'Diwali': true, 'Christmas': false, 'Halloween': false},imagePath: 'assets/images/diwali.png'),
    Question(id: '11', title: 'Which festival marks the end of the Islamic holy month of Ramadan?', options: {'Hanukkah': false, 'Eid': true, 'Holi': false, 'Easter': false},imagePath: 'assets/images/eid.png' ),
    Question(id: '12', title: 'What festival do we celebrate by flying kites?', options: {'Makar Sankranti': true, 'Holi': false, 'Navratri': false, 'Diwali': false},imagePath: 'assets/images/kite.png'),
    Question(id: '13', title: 'What festival do we celebrate by dressing up in costumes and going trick-or-treating?', options: {'Easter': false, 'Halloween': true, 'Christmas': false, 'Eid': false},imagePath:'assets/images/pumpkin.png'),
    Question(id: '14', title: 'During which festival do we decorate a tree and sing carols?', options: {'Eid': false, 'Holi': false, 'Easter': false, 'Christmas': true},imagePath:'assets/images/santa.png'),
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