import 'package:flutter/material.dart';

class ChristianDetails extends StatelessWidget {
  const ChristianDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1E1B32),
      appBar: AppBar(
        backgroundColor: const Color(0xFF2D284A),
        title: const Text(
          'Christian Manalang Suva',
          style: TextStyle(color: Color(0xFFE0DBFF)),
        ),
        iconTheme: const IconThemeData(color: Color(0xFFE0DBFF)),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Center(
              child: CircleAvatar(
                radius: 60,
                backgroundImage: AssetImage('assets/images/christian.jpg'),
              ),
            ),
            const SizedBox(height: 20),
            const Center(
              child: Text(
                'Christian Manalang Suva',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFFE0DBFF),
                ),
              ),
            ),
            const SizedBox(height: 10),
            const Center(
              child: Text(
                'Software Developer',
                style: TextStyle(
                  fontSize: 20,
                  color: Color(0xFFB0A9E2),
                ),
              ),
            ),
            const SizedBox(height: 30),
            const Text(
              'About Me',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Color(0xFFE0DBFF),
              ),
            ),
            const Text(
              'Passionate Software Developer from Arayat, Pampanga with a deep love for coding and problem-solving. '
                  'Christian is committed to crafting efficient and user-friendly applications that bridge the gap between technology and users.',
              style: TextStyle(fontSize: 16, color: Color(0xFFE0DBFF)),
            ),
            const SizedBox(height: 30),
            const Text(
              'Career & Passion',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Color(0xFFE0DBFF),
              ),
            ),
            const Text(
              'Specializes in Flutter for mobile app development and React for dynamic web experiences. '
                  'Driven by curiosity and a commitment to growth, Christian continuously explores new tools and frameworks to enhance his skills.',
              style: TextStyle(fontSize: 16, color: Color(0xFFE0DBFF)),
            ),
            const SizedBox(height: 30),
            const Text(
              'Skills',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Color(0xFFE0DBFF),
              ),
            ),
            const Text(
              '• Flutter & Dart\n'
                  '• React & JavaScript\n'
                  '• Node.js & Express\n'
                  '• UI/UX Design\n'
                  '• Problem Solving & Debugging\n'
                  '• Agile Development Practices',
              style: TextStyle(fontSize: 16, color: Color(0xFFE0DBFF)),
            ),
            const SizedBox(height: 30),
            const Text(
              'Experience',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Color(0xFFE0DBFF),
              ),
            ),
            const Text(
              '• Led the development of cross-platform mobile applications using Flutter.\n'
                  '• Collaborated in an Agile team to build responsive web applications with React.\n'
                  '• Implemented backend APIs using Node.js for seamless integration with frontend solutions.',
              style: TextStyle(fontSize: 16, color: Color(0xFFE0DBFF)),
            ),
            const SizedBox(height: 30),
            const Text(
              'Hobbies & Interests',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Color(0xFFE0DBFF),
              ),
            ),
            const Text(
              '• Exploring the scenic landscapes of Pampanga.\n'
                  '• Delving into the latest tech trends and innovations.\n'
                  '• Enjoys online multiplayer gaming for strategic challenges and relaxation.',
              style: TextStyle(fontSize: 16, color: Color(0xFFE0DBFF)),
            ),
            const SizedBox(height: 30),
            const Text(
              'Vision & Aspirations',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Color(0xFFE0DBFF),
              ),
            ),
            const Text(
              'Christian aspires to contribute to technological advancements that positively impact people\'s lives. '
                  'He aims to become a lead developer, guiding teams to create user-centric applications that combine innovation and practicality.',
              style: TextStyle(fontSize: 16, color: Color(0xFFE0DBFF)),
            ),
          ],
        ),
      ),
    );
  }
}
