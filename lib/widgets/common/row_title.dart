import 'package:flutter/material.dart';

/// A Row with two set text, One is bold and another one is grey text.
class RowTitle extends StatelessWidget {
  const RowTitle({super.key, required this.title, required this.action});

  final String title;
  final String action;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20.0,
          ),
        ),
        Text(action,
          style: const TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 20.0,
            color: Color(0xFFa6a5a6),
          ),
        ),
      ],
    );
  }
}
