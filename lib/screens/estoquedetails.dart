import 'package:flutter/material.dart';

class RenceDetails extends StatelessWidget {
  const RenceDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1E1B32),
      appBar: AppBar(
        backgroundColor: const Color(0xFF2D284A),
        title: const Text(
          'Rence Estoque',
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
                backgroundImage: AssetImage('assets/images/rence.jpg'),
              ),
            ),
            const SizedBox(height: 20),
            const Center(
              child: Text(
                'Rence Estoque',
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
                'UI/UX Designer',
                style: TextStyle(
                  fontSize: 20,
                  color: Color(0xFFB0A9E2),
                ),
              ),
            ),
            const SizedBox(height: 30),
            const Text(
              'Bio',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Color(0xFFE0DBFF),
              ),
            ),
            const Text(
              'Creative and dedicated UI/UX Designer from Sta. Ana, Pampanga with a passion for crafting innovative and user-friendly interfaces. Skilled in blending aesthetics with functionality to create impactful user experiences.',
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
              '• UI/UX Design\n'
                  '• Figma & Adobe XD\n'
                  '• Prototyping & Wireframing\n'
                  '• User Research & Usability Testing\n'
                  '• Interaction Design\n'
                  '• Visual Design & Branding',
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
              '• Led the design of a cross-platform mobile app that improved user engagement by 40%.\n'
                  '• Collaborated with developers to enhance the UI/UX of a major e-commerce website.\n'
                  '• Conducted user research to identify pain points and optimize navigation flows.',
              style: TextStyle(fontSize: 16, color: Color(0xFFE0DBFF)),
            ),
            const SizedBox(height: 30),
            const Text(
              'Achievements',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Color(0xFFE0DBFF),
              ),
            ),
            const Text(
              '• Awarded "Best User Experience Design" in a regional tech competition.\n'
                  '• Recognized as a top-performing designer in a fast-paced startup environment.\n'
                  '• Successfully launched multiple user-centered designs, leading to increased user satisfaction.',
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
              '• Playing basketball and maintaining an active lifestyle.\n'
                  '• Exploring new design trends and staying updated with UI/UX best practices.\n'
                  '• Photography and digital illustration as creative outlets.',
              style: TextStyle(fontSize: 16, color: Color(0xFFE0DBFF)),
            ),
          ],
        ),
      ),
    );
  }
}
