import 'package:flutter_test/flutter_test.dart';
import 'package:resume/models/social_link.dart';

void main() {
  group('SocialLink', () {
    test('should create a SocialLink with the correct properties', () {
      final socialLink = SocialLink(
        linkedIn: 'https://www.linkedin.com/',
        website: 'https://www.google.com',
        twitter: '@temp',
        instagram: 'temp',
      );

      expect(socialLink.linkedIn, 'https://www.linkedin.com/');
      expect(socialLink.website, 'https://www.google.com');
      expect(socialLink.twitter, '@temp');
      expect(socialLink.instagram, 'temp');
    });

    test('should be able to be created from JSON', () {
      final json = {
        'linkedIn': 'https://www.linkedin.com/',
        'website': 'https://www.google.com',
        'twitter': '@temp',
        'instagram': 'temp',
      };

      final socialLink = SocialLink.fromJson(json);

      expect(socialLink.linkedIn, 'https://www.linkedin.com/');
      expect(socialLink.website, 'https://www.google.com');
      expect(socialLink.twitter, '@temp');
      expect(socialLink.instagram, 'temp');
    });
  });
}
