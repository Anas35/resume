class SocialLink {
  final String linkedIn;
  final String website;
  final String twitter;
  final String instagram;

  SocialLink({
    required this.linkedIn,
    required this.website,
    required this.twitter,
    required this.instagram,
  });

  static SocialLink fromJson(Map<String, dynamic> json) {
    return SocialLink(
      linkedIn: json['linkedIn'] as String,
      website: json['website'] as String,
      twitter: json['twitter'] as String,
      instagram: json['instagram'] as String,
    );
  }
}
