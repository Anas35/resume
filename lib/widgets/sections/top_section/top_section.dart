import 'package:flutter/material.dart';
import 'experience_section.dart';
import 'title_section.dart';

class TopSection extends StatelessWidget {
  const TopSection({
    super.key,
    required this.title,
    required this.experience,
    required this.projectCompleted,
    required this.client,
  });

  final String title;
  final int experience;
  final int projectCompleted;
  final int client;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(flex: 3, child: TitleSection(title: title)),
        Expanded(
          flex: 2,
          child: ExperienceSection(
            experience: experience,
            projectCompleted: projectCompleted,
            client: client,
          ),
        ),
      ],
    );
  }
}
