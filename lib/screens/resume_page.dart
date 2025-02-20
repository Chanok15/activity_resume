import 'package:flutter/material.dart';

class ResumePage extends StatefulWidget {
  const ResumePage({super.key});

  @override
  State<ResumePage> createState() => _ResumePageState();
}

class _ResumePageState extends State<ResumePage> {
  // Visibility state for the "i" icon
  bool _isInfoVisible = false;

  // List of team members (Sorted Alphabetically)
  final List<Map<String, String>> teamMembers = [
    {
      'name': 'Aron Dustin Villa',
      'position': 'Project Manager',
      'avatarPath': 'assets/images/dustin.jpg'
    },
    {
      'name': 'Christian Manalang Suva',
      'position': 'Software Developer',
      'avatarPath': 'assets/images/christian.jpg'
    },
    {
      'name': 'Rence Estoque',
      'position': 'UI/UX Designer',
      'avatarPath': 'assets/images/rence.jpg'
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Resume Page'),
        actions: [
          IconButton(
            icon: const Icon(Icons.info_outline),
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
          // Main List of Resume Cards (Always Visible)
          ListView(
            padding: const EdgeInsets.all(16.0),
            children: teamMembers.map((member) {
              return Column(
                children: [
                  ResumeCard(
                    name: member['name']!,
                    position: member['position']!,
                    avatarPath: member['avatarPath']!,
                  ),
                  const SizedBox(height: 20),
                ],
              );
            }).toList(),
          ),

          // Pop-up Overlay (Toggled by "i" icon)
          Visibility(
            visible: _isInfoVisible,
            child: Container(
              color: Colors.black.withOpacity(0.8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Text(
                      'Team Members',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Expanded(
                    child: ListView(
                      padding: const EdgeInsets.all(16.0),
                      children: teamMembers.map((member) {
                        return Card(
                          color: Colors.grey[900],
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: ListTile(
                            leading: CircleAvatar(
                              backgroundImage: AssetImage(member['avatarPath']!),
                            ),
                            title: Text(
                              member['name']!,
                              style: const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                ],
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
