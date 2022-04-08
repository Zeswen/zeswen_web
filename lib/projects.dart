import 'technologies.dart';

class Project {
  const Project._({
    required this.company,
    required this.position,
    required this.description,
    required this.technologies,
  });

  final String company;
  final String position;
  final String description;
  final Set<Technology> technologies;

  static const projects = [
    Project._(
      company: 'Namastay',
      position: 'Head of Engineering | 2022 - Present',
      description: 'Developing an incredible application with an amazing team!',
      technologies: {
        Technology.typeScript,
        Technology.javaScript,
        Technology.nextJs,
        Technology.react,
        Technology.reactNative,
        Technology.redux,
        Technology.nodeJs,
        Technology.firebase,
        Technology.seo,
        Technology.html,
        Technology.aws,
        Technology.mongoDb,
        Technology.postgreSql,
        Technology.css,
        Technology.rust,
        Technology.git,
      },
    ),
    Project._(
      company: 'WordList',
      position: 'Head of Engineering | 2019 - 2022',
      description:
          'An outstanding company where I am developing a revolutionary global dictionary and an innovative application to learn new languages in web, Android, iOS and multiple platforms. I started here as a Senior Full-stack Developer and made my way up to Head of Engineering in 2020.',
      technologies: {
        Technology.dart,
        Technology.flutter,
        Technology.typeScript,
        Technology.javaScript,
        Technology.nextJs,
        Technology.react,
        Technology.redux,
        Technology.nodeJs,
        Technology.firebase,
        Technology.seo,
        Technology.html,
        Technology.aws,
        Technology.mongoDb,
        Technology.postgreSql,
        Technology.css,
        Technology.rust,
        Technology.kotlin,
        Technology.java,
        Technology.swift,
        Technology.python,
        Technology.git,
      },
    ),
    Project._(
      company: 'PatientPal',
      position: 'Full-stack developer | 2019 - 2019',
      description:
          'Awesome place where I worked my path in Angular, AWS, and Node + TypeScript remotely for Boston, MA, developing a stunning medical application.',
      technologies: {
        Technology.typeScript,
        Technology.javaScript,
        Technology.angular,
        Technology.html,
        Technology.css,
        Technology.redux,
        Technology.electron,
        Technology.nodeJs,
        Technology.aws,
        Technology.dynamoDb,
        Technology.git,
      },
    ),
    Project._(
      company: 'BinPar',
      position: 'Software Engineer | 2018 - 2019',
      description:
          'Great company where I could start my game development, web and native applications career. I started working remotely for this company from Marbella Area in July 2019.',
      technologies: {
        Technology.typeScript,
        Technology.javaScript,
        Technology.cs,
        Technology.python,
        Technology.nextJs,
        Technology.react,
        Technology.reactNative,
        Technology.redux,
        Technology.unity,
        Technology.html,
        Technology.css,
        Technology.graphql,
        Technology.nodeJs,
        Technology.mongoDb,
        Technology.mongoose,
        Technology.git,
      },
    ),
  ];
}
