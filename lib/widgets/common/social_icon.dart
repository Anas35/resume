import 'package:flutter/material.dart';

class SocialIcon extends StatelessWidget {
  const SocialIcon({super.key, required this.logoLink, required this.onDirectLink});

  final String logoLink;
  final String onDirectLink;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: CircleAvatar(
        child: Image.asset('assets/images/$logoLink.png'),
      ),
    );
  }
}
