import 'social_link.dart';

class Resume {
  final String name;
  final String location;
  final String photoLink;
  final String title;
  final String about;
  final int experience;
  final int projectCompleted;
  final int client;
  final List<String> projectImageLink;
  final SocialLink socialLink;

  Resume({
    required this.name,
    required this.location,
    required this.photoLink,
    required this.title,
    required this.about,
    required this.experience,
    required this.projectCompleted,
    required this.client,
    required this.projectImageLink,
    required this.socialLink,
  });

  static Resume fromJson(Map<String, dynamic> json) {
    return Resume(
      name: json['name'] as String,
      location: json['location'] as String,
      photoLink: json['photoLink'] as String,
      title: json['title'] as String,
      about: json['about'] as String,
      experience: json['experience'] as int,
      projectCompleted: json['projectCompleted'] as int,
      client: json['client'] as int,
      projectImageLink: (json['projectImageLink'] as List).cast<String>(),
      socialLink: SocialLink.fromJson(json['socialLink'] as Map<String, dynamic>),
    );
  }
}
