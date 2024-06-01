import 'package:flutter/material.dart';

class PoliciesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Policies'),
      ),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          Text(
            'Terms and Conditions',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          Text(
            'Welcome to our Kids Learning App! Before using our app, please read and understand the following terms and conditions:',
          ),
          SizedBox(height: 10),
          Text(
            '1. Content: Our app provides educational content suitable for kids of various age groups. The content includes interactive games, quizzes, videos, and other educational materials.',
          ),
          SizedBox(height: 10),
          Text(
            '2. Parental Guidance: We encourage parents or guardians to supervise their children while using our app. Although our content is curated for educational purposes, parental guidance is essential to ensure safe and appropriate usage.',
          ),
          SizedBox(height: 10),
          Text(
            '3. Data Collection: We may collect certain personal information from users, such as name, age, and progress in educational activities. This information is used solely for improving our services and providing personalized learning experiences. We prioritize the privacy and security of our users.',
          ),
          SizedBox(height: 10),
          Text(
            '4. In-App Purchases: Our app may offer in-app purchases for additional content or features. Parents can enable password protection to prevent unauthorized purchases by children.',
          ),
          SizedBox(height: 10),
          Text(
            '5. Safety: We strive to create a safe and positive environment for children within our app. Any inappropriate content or behavior should be reported immediately for prompt action by our moderation team.',
          ),
          SizedBox(height: 10),
          Text(
            'By using our Kids Learning App, you agree to abide by these terms and conditions. If you have any questions or concerns, please contact us at support@example.com.',
          ),
        ],
      ),
    );
  }
}
