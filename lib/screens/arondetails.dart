import 'package:flutter/material.dart';

class AronDetails extends StatelessWidget {
  const AronDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1E1B32),
      appBar: AppBar(
        backgroundColor: const Color(0xFF2D284A),
        title: const Text(
          'Aron Dustin Villa',
          style: TextStyle(color: Color(0xFFE0DBFF)),
        ),
        iconTheme: const IconThemeData(color: Color(0xFFE0DBFF)),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          Center(
            child: Column(
              children: const [
                CircleAvatar(
                  radius: 60,
                  backgroundImage: AssetImage('assets/images/dustin.jpg'),
                ),
                SizedBox(height: 20),
                Text(
                  'Aron Dustin Villa',
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFFE0DBFF),
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'Project Manager',
                  style: TextStyle(
                    fontSize: 20,
                    color: Color(0xFFB0A9E2),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 30),
          const Text(
            'Contact Information',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Color(0xFFE0DBFF),
            ),
          ),
          const ListTile(
            leading: Icon(Icons.location_on, color: Color(0xFFB0A9E2)),
            title: Text(
              'Sta. Ana, Pampanga, Philippines',
              style: TextStyle(color: Color(0xFFE0DBFF)),
            ),
          ),
          const ListTile(
            leading: Icon(Icons.email, color: Color(0xFFB0A9E2)),
            title: Text(
              'arondustin.villa@example.com',
              style: TextStyle(color: Color(0xFFE0DBFF)),
            ),
          ),
          const ListTile(
            leading: Icon(Icons.phone, color: Color(0xFFB0A9E2)),
            title: Text(
              '+63 912 345 6789',
              style: TextStyle(color: Color(0xFFE0DBFF)),
            ),
          ),
          const SizedBox(height: 30),
          const Text(
            'Objective',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Color(0xFFE0DBFF),
            ),
          ),
          const Text(
            'Results-driven Project Manager with over 5 years of experience in leading cross-functional teams to deliver complex projects on time and within budget. Known for strategic vision, leadership, and exceptional communication skills.',
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
            '• Strategic Planning\n'
                '• Agile Methodologies\n'
                '• Risk Management\n'
                '• Team Leadership\n'
                '• Budgeting & Forecasting',
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
            '• Successfully managed a team of 20+ developers to deliver a complex enterprise solution, achieving a 20% increase in productivity.\n'
                '• Recognized as Employee of the Year for outstanding leadership and project execution.\n'
                '• Reduced project delivery time by 30% through process optimization and efficient resource management.',
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
            '• Traveling and exploring new cultures\n'
                '• Playing basketball and staying active\n'
                '• Reading leadership and personal development books',
            style: TextStyle(fontSize: 16, color: Color(0xFFE0DBFF)),
          ),
        ],
      ),
    );
  }
}
