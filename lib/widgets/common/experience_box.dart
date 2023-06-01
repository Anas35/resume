import 'package:flutter/material.dart';

import 'common_container.dart';

/// A Information box about Experience
class ExperienceBox extends StatelessWidget {
  const ExperienceBox({
    super.key,
    required this.color,
    this.fontColor = Colors.white,
    required this.text,
    required this.descrption,
  });

  final Color color;
  final Color fontColor;
  final String text;
  final String descrption;

  @override
  Widget build(BuildContext context) {
    return CommonContainer(
      color: color,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            text,
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 32.0,
              color: fontColor,
            ),
          ),
          Text(
            descrption,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 16.0,
              color: fontColor,
            ),
          )
        ],
      ),
    );
  }
}
