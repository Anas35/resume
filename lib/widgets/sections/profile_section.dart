import 'package:flutter/material.dart';
import 'package:resume/models/models.dart';
import 'package:resume/widgets/common/common_widget.dart';

class ProfileSection extends StatelessWidget {
  const ProfileSection({
    super.key,
    required this.photoLink,
    required this.name,
    required this.location,
    required this.socialLink,
  });

  final String photoLink;
  final String name;
  final String location;
  final SocialLink socialLink;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CommonContainer(
          size: Size.fromHeight(54.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('BimGraph'),
              Icon(
                Icons.menu,
                color: Colors.white,
              ),
            ],
          ),
        ),
        Expanded(
          flex: 4,
          child: Row(
            children: [
              Expanded(
                flex: 2,
                child: Container(
                  margin: const EdgeInsets.all(4.0),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(photoLink),
                      fit: BoxFit.fill,
                    ),
                    borderRadius: const BorderRadius.all(Radius.circular(16.0)),
                  ),
                ),
              ),
              Expanded(
                flex: 3,
                child: DetailsSection(
                  name: name,
                  location: location,
                  socialLink: socialLink,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class DetailsSection extends StatelessWidget {
  const DetailsSection({
    super.key,
    required this.name,
    required this.location,
    required this.socialLink,
  });

  final String name;
  final String location;
  final SocialLink socialLink;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: InformationRow(label: 'Name: ', value: name),
        ),
        Expanded(
          flex: 3,
          child: InformationRow(label: 'Based in', value: location),
        ),
        Expanded(
          child: CommonContainer(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SocialIcon(logoLink: 'linkedin', onDirectLink: socialLink.linkedIn),
                SocialIcon(logoLink: 'browser', onDirectLink: socialLink.website),
                SocialIcon(logoLink: 'twitter', onDirectLink: socialLink.twitter),
                SocialIcon(logoLink: 'instagram', onDirectLink: socialLink.instagram),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
