import 'package:flutter/material.dart';
import 'package:resume/widgets/common/common_widget.dart';

class TitleSection extends StatelessWidget {
  const TitleSection({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return CommonContainer(
      color: const Color(0xFF1c1a1e),
      child: Stack(
        children: [
          Positioned.fill(
            child: Text(
              title,
              maxLines: 3,
              style: const TextStyle(
                fontSize: 46.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF8325fa),
                foregroundColor: Colors.white,
                fixedSize: const Size(136.0, 44.0),
                textStyle: const TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 16.0,
                ),
              ),
              onPressed: () {},
              child: const Text('Hire me 👋'),
            ),
          ),
        ],
      ),
    );
  }
}
