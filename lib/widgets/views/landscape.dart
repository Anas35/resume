import 'package:flutter/material.dart';
import 'package:resume/models/models.dart';
import 'package:resume/widgets/sections/sections.dart';

class LandscapeView extends StatelessWidget {
  const LandscapeView({super.key, required this.resume});

  final Resume resume;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 3,
          child: Row(
            children: [
              Expanded(
                child: TopSection(
                  title: resume.title,
                  experience: resume.experience,
                  projectCompleted: resume.projectCompleted,
                  client: resume.client,
                ),
              ),
              Expanded(
                child: ProfileSection(
                  photoLink: resume.photoLink,
                  name: resume.name,
                  location: resume.location,
                  socialLink: resume.socialLink,
                ),
              ),
            ],
          ),
        ),
        Expanded(
          flex: 2,
          child: Row(
            children: [
              Expanded(
                flex: 3,
                child: PortFolioSection(imagesLink: resume.projectImageLink),
              ),
              Expanded(
                flex: 2,
                child: AboutSection(about: resume.about),
              ),
            ],
          ),
        ),
      ],
    );
  }
}