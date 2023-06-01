import 'package:resume/models/resume.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Resume', () {
    test('should create a Resume from a JSON map', () {
      final jsonMap = {
        'name': 'Temp',
        'location': 'Earth',
        'photoLink': 'https://www.gravatar.com/avatar/1234567890abcdef?s=32&d=identicon',
        'title': 'Software Engineer',
        'about': 'I am a software engineer with 5 years of experience. I am passionate about building innovative products.',
        'experience': 5,
        'projectCompleted': 10,
        'client': 20,
        'projectImageLink': [
          'https://www.example.com/project1.png',
          'https://www.example.com/project2.png',
          'https://www.example.com/project3.png',
        ],
        'socialLink': {
          'website': 'https://github.com',
          'linkedIn': 'https://www.linkedin.com/',
          'twitter': '@temp',
          'instagram': 'temp',
        },
      };

      final resume = Resume.fromJson(jsonMap);

      expect(resume.name, 'Temp');
      expect(resume.location, 'Earth');
      expect(resume.photoLink, 'https://www.gravatar.com/avatar/1234567890abcdef?s=32&d=identicon');
      expect(resume.title, 'Software Engineer');
      expect(resume.about, 'I am a software engineer with 5 years of experience. I am passionate about building innovative products.');
      expect(resume.experience, 5);
      expect(resume.projectCompleted, 10);
      expect(resume.client, 20);
      expect(resume.projectImageLink, [
        'https://www.example.com/project1.png',
        'https://www.example.com/project2.png',
        'https://www.example.com/project3.png',
      ]);
      expect(resume.socialLink.website, 'https://github.com');
      expect(resume.socialLink.linkedIn, 'https://www.linkedin.com/');
      expect(resume.socialLink.twitter, '@temp');
      expect(resume.socialLink.instagram, 'temp');
    });
  });
}
