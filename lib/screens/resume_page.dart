import 'package:flutter/material.dart';

class ResumePage extends StatelessWidget {
  const ResumePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Resume Page'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: const [
          ResumeCard(
            name: 'Christian Manalang Suva',
            position: 'Software Developer',
            avatarPath: 'assets/images/christian.jpg',
          ),
          SizedBox(height: 20),
          ResumeCard(
            name: 'Rence Estoque',
            position: 'UI/UX Designer',
            avatarPath: 'assets/images/rence.jpg',
          ),
          SizedBox(height: 20),
          ResumeCard(
            name: 'Aron Dustin Villa',
            position: 'Project Manager',
            avatarPath: 'assets/images/dustin.jpg',
          ),

        ],
      ),
    );
  }
}

class ResumeCard extends StatelessWidget {
  final String name;
  final String position;
  final String avatarPath;

  const ResumeCard({
    super.key,
    required this.name,
    required this.position,
    required this.avatarPath,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      elevation: 5,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            CircleAvatar(
              radius: 40,
              backgroundImage: AssetImage(avatarPath),
            ),
            const SizedBox(width: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  position,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
