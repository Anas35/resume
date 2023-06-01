import 'package:flutter/material.dart';
import 'package:resume/widgets/common/common_widget.dart';

/// A Section that display about information
class AboutSection extends StatelessWidget {
  const AboutSection({super.key, required this.about});

  final String about;

  @override
  Widget build(BuildContext context) {
    return CommonContainer(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          const RowTitle(title: 'About', action: 'Resume'),
          const SizedBox(height: 15),
          Flexible(
            child: Center(
              child: Text(about,
                style: const TextStyle(
                  height: 1.5,
                  fontWeight: FontWeight.w400,
                  fontSize: 16.0,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}