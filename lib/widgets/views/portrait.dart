import 'package:flutter/material.dart';
import 'package:resume/models/models.dart';
import 'package:resume/widgets/sections/sections.dart';

class PortraitView extends StatelessWidget {
  const PortraitView({super.key, required this.resume});

  final Resume resume;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        SizedBox(
          height: 350,
          child: ProfileSection(
            photoLink: resume.photoLink,
            name: resume.name,
            location: resume.location,
            socialLink: resume.socialLink,
          ),
        ),
        SizedBox(
          height: 400,
          child: TopSection(
            title: resume.title,
            experience: resume.experience,
            projectCompleted: resume.projectCompleted,
            client: resume.client,
          ),
        ),
        SizedBox(height: 250, child: AboutSection(about: resume.about)),
        SizedBox(height: 250, child: PortFolioSection(imagesLink: resume.projectImageLink)),
      ],
    );
  }
}
