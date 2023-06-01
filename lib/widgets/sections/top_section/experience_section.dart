import 'package:flutter/material.dart';
import 'package:resume/widgets/common/common_widget.dart';

class ExperienceSection extends StatelessWidget {
  const ExperienceSection({
    super.key,
    required this.experience,
    required this.projectCompleted,
    required this.client,
  });

  final int experience;
  final int projectCompleted;
  final int client;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: ExperienceBox(
            color: const Color(0xFF07c29c),
            text: '$experience+',
            descrption: "Years Experience",
          ),
        ),
        Expanded(
          child: ExperienceBox(
            color: const Color(0xFFfec03c),
            text: '$projectCompleted+',
            descrption: "Handled Project",
            fontColor: Colors.black,
          ),
        ),
        Expanded(
          child: ExperienceBox(
            color: const Color(0xFFfe6c7a),
            text: '$client+',
            descrption: "Clients",
          ),
        ),
      ],
    );
  }
}