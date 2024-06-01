// // import 'package:flutter/material.dart';
// // import 'package:shapes/constants.dart';
// //
// // class QuestionWidget extends StatelessWidget {
// //   const QuestionWidget({Key? key, required this.question, required this.indexAction, required this.totalQuestions, required this.imagePath}) : super(key: key);
// //
// //   final String question;
// //   final int indexAction;
// //   final int totalQuestions;
// //   final String imagePath;
// //   @override
// //   Widget build(BuildContext context) {
// //     return Column(
// //       crossAxisAlignment: CrossAxisAlignment.start,
// //       children: [
// //         //     Image.asset(
// //         //     imagePath,
// //         //     width: 30.0,
// //         //     height: 30.0,
// //         //     alignment: Alignment.bottomCenter,
// //         //     fit: BoxFit.cover,
// //         // ),
// //         const SizedBox(height: 10.0),
// //         Text(
// //           'Question ${indexAction + 1}/$totalQuestions: $question',
// //           style: const TextStyle(
// //             fontSize: 24.0,
// //             color: neutral,
// //           ),
// //         ),
// //         Image.asset(
// //           imagePath,
// //           width: 250.0,
// //           height: 250.0,
// //           alignment: Alignment.bottomRight,
// //           fit: BoxFit.cover,
// //         ),
// //       ],
// //     );
// //     // return Container(
// //     //   alignment: Alignment.centerLeft,
// //     //   child:Text('Question ${indexAction + 1}/$totalQuestions: $question',
// //     //   style: const TextStyle(
// //     //       fontSize: 24.0,
// //     //     color: neutral,
// //     //   ),
// //     // ),
// //     // );
// //   }
// // }
// import 'package:flutter/material.dart';
// import 'package:shapes/constants.dart';
//
// class QuestionWidget extends StatelessWidget {
//   const QuestionWidget({
//     Key? key,
//     required this.question,
//     required this.indexAction,
//     required this.totalQuestions,
//     required this.imagePath,
//   }) : super(key: key);
//
//   final String question;
//   final int indexAction;
//   final int totalQuestions;
//   final String imagePath;
//
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           // Image.asset(
//           //   imagePath,
//           //   width: 30.0,
//           //   height: 30.0,
//           //   alignment: Alignment.bottomCenter,
//           //   fit: BoxFit.cover,
//           // ),
//           const SizedBox(height: 10.0),
//           Text(
//             'Question ${indexAction + 1}/$totalQuestions: $question',
//             style: const TextStyle(
//               fontSize: 24.0,
//               color: neutral,
//             ),
//           ),
//           Image.asset(
//             imagePath,
//             width: 200.0,
//             height: 200.0,
//             alignment: Alignment.bottomRight,
//             fit: BoxFit.fitHeight,
//           ),
//         ],
//       ),
//     );
//   }
// }
/*import 'package:flutter/material.dart';
import 'package:fruits/constants.dart';

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
        //     Image.asset(
        //     imagePath,
        //     width: 30.0,
        //     height: 30.0,
        //     alignment: Alignment.bottomCenter,
        //     fit: BoxFit.cover,
        // ),
        const SizedBox(height: 10.0),
        Text(
          'Question ${indexAction + 1}/$totalQuestions: $question',
          style: const TextStyle(
            fontSize: 24.0,
            color: neutral,
          ),
        ),
        Image.asset(
          imagePath,
          width: 250.0,
          height: 250.0,
          alignment: Alignment.bottomRight,
          fit: BoxFit.cover,
        ),
      ],
    );
    // return Container(
    //   alignment: Alignment.centerLeft,
    //   child:Text('Question ${indexAction + 1}/$totalQuestions: $question',
    //   style: const TextStyle(
    //       fontSize: 24.0,
    //     color: neutral,
    //   ),
    // ),
    // );
  }
}
*/
import 'package:flutter/material.dart';
import '../../../constants.dart';

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
            fit: BoxFit.fill
          ),
        ),
      ],
    );
  }
}

