import 'package:flutter/material.dart';
import 'arondetails.dart';
import 'christiandetails.dart';
import 'estoquedetails.dart';

class ResumePage extends StatefulWidget {
  const ResumePage({super.key});

  @override
  State<ResumePage> createState() => _ResumePageState();
}

class _ResumePageState extends State<ResumePage> {
  bool _isInfoVisible = false;

  final List<Map<String, String>> teamMembers = [
    {
      'name': 'Rence Estoque',
      'position': 'UI/UX Designer',
      'avatarPath': 'assets/images/rence.jpg',
    },
    {
      'name': 'Christian Manalang Suva',
      'position': 'Software Developer',
      'avatarPath': 'assets/images/christian.jpg',
    },
    {
      'name': 'Aron Dustin Villa',
      'position': 'Project Manager',
      'avatarPath': 'assets/images/dustin.jpg',
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1E1B32),
      appBar: AppBar(
        backgroundColor: const Color(0xFF2D284A),
        title: const Text(
          'Resume Page',
          style: TextStyle(color: Color(0xFFE0DBFF)),
        ),
        iconTheme: const IconThemeData(color: Color(0xFFE0DBFF)),
        actions: [
          IconButton(
            icon: const Icon(Icons.info_outline, color: Color(0xFFE0DBFF)),
            onPressed: () {
              setState(() {
                _isInfoVisible = !_isInfoVisible;
              });
            },
          ),
        ],
      ),
      body: Stack(
        children: [
          ListView(
            padding: const EdgeInsets.all(16.0),
            children: teamMembers.map((member) {
              return Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      if (member['name'] == 'Rence Estoque') {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const RenceDetails(),
                          ),
                        );
                      } else if (member['name'] == 'Christian Manalang Suva') {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const ChristianDetails(),
                          ),
                        );
                      } else if (member['name'] == 'Aron Dustin Villa') {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const AronDetails(),
                          ),
                        );
                      }
                    },
                    child: ResumeCard(
                      name: member['name']!,
                      position: member['position']!,
                      avatarPath: member['avatarPath']!,
                    ),
                  ),
                  const SizedBox(height: 20),
                ],
              );
            }).toList(),
          ),
          Visibility(
            visible: _isInfoVisible,
            child: GestureDetector(
              onTap: () {
                setState(() {
                  _isInfoVisible = false;
                });
              },
              child: Container(
                color: Colors.black.withOpacity(0.8),
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Text(
                        'Team Members',
                        style: TextStyle(
                          color: Color(0xFFE0DBFF),
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 20),
                      ...teamMembers.map((member) {
                        return Column(
                          children: [
                            CircleAvatar(
                              radius: 30,
                              backgroundImage: AssetImage(member['avatarPath']!),
                            ),
                            const SizedBox(height: 10),
                            Text(
                              member['name']!,
                              style: const TextStyle(
                                color: Color(0xFFE0DBFF),
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 20),
                          ],
                        );
                      }).toList(),
                    ],
                  ),
                ),
              ),
            ),
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
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFF2D284A),
        borderRadius: BorderRadius.circular(10),
      ),
      padding: const EdgeInsets.all(16),
      child: Row(
        children: [
          CircleAvatar(
            radius: 30,
            backgroundImage: AssetImage(avatarPath),
          ),
          const SizedBox(width: 20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: const TextStyle(
                  color: Color(0xFFE0DBFF),
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                position,
                style: const TextStyle(
                  color: Color(0xFFB0A9E2),
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
