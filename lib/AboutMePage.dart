import 'package:flutter/material.dart';

class AboutMePage extends StatelessWidget {
  const AboutMePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About Me'),
        centerTitle: true,
        backgroundColor: Colors.blue.shade700,
        foregroundColor: Colors.white,
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          // Education Section
          _buildSectionCard(
            title: 'Education',
            icon: Icons.school,
            children: [
              _buildListItem(
                'Bachelor of Computer Science',
                'Karakoram International University',
                '2022 - 2026',
              ),
              const SizedBox(height: 10),
              _buildListItem(
                'High School Diploma',
                'Rise Technical College Gilgit',
                '2019 - 2021',
              ),
            ],
          ),
          const SizedBox(height: 20),
          // Skills Section
          _buildSectionCard(
            title: 'Skills',
            icon: Icons.star,
            children: [
              Wrap(
                spacing: 8,
                runSpacing: 8,
                children: [
                  _buildSkillChip('Flutter'),
                  _buildSkillChip('Dart'),
                  _buildSkillChip('Firebase'),
                  _buildSkillChip('REST APIs'),
                  _buildSkillChip('Git'),
                  _buildSkillChip('UI/UX Design'),
                  _buildSkillChip('State Management'),
                  _buildSkillChip('Material Design'),
                ],
              ),
            ],
          ),
          const SizedBox(height: 20),
          // Hobbies Section
          _buildSectionCard(
            title: 'Hobbies',
            icon: Icons.favorite,
            children: [
              _buildHobbyItem(Icons.code, 'Coding', 'Building cool apps'),
              const SizedBox(height: 12),
              _buildHobbyItem(Icons.book, 'Reading', 'Tech blogs and books'),
              const SizedBox(height: 12),
              _buildHobbyItem(Icons.music_note, 'Music', 'Playing guitar'),
              const SizedBox(height: 12),
              _buildHobbyItem(Icons.sports_soccer, 'Sports', 'Football enthusiast'),
            ],
          ),
          const SizedBox(height: 30),
          // Back Button
          ElevatedButton.icon(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back),
            label: const Text('Back to Profile'),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue.shade700,
              foregroundColor: Colors.white,
              padding: const EdgeInsets.symmetric(vertical: 16),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSectionCard({
    required String title,
    required IconData icon,
    required List<Widget> children,
  }) {
    return Card(
      elevation: 3,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(icon, color: Colors.blue.shade700),
                const SizedBox(width: 10),
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 15),
            ...children,
          ],
        ),
      ),
    );
  }

  Widget _buildListItem(String title, String subtitle, String trailing) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.blue.shade50,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            subtitle,
            style: TextStyle(
              fontSize: 14,
              color: Colors.grey.shade700,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            trailing,
            style: TextStyle(
              fontSize: 12,
              color: Colors.grey.shade600,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSkillChip(String skill) {
    return Chip(
      label: Text(skill),
      backgroundColor: Colors.blue.shade100,
      labelStyle: TextStyle(
        color: Colors.blue.shade900,
        fontWeight: FontWeight.w500,
      ),
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
    );
  }

  Widget _buildHobbyItem(IconData icon, String title, String description) {
    return Row(
      children: [
        Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.blue.shade50,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Icon(icon, color: Colors.blue.shade700),
        ),
        const SizedBox(width: 15),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                description,
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey.shade600,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}