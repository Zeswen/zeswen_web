class Project {
  const Project(
      this.company, this.position, this.description, this.technologies);

  final String company;
  final String position;
  final String description;
  final List<String> technologies;
}

const projects = [
  Project(
      'WordList',
      'Head of Engineering | 2019 - Present',
      'An outstanding company where I am developing a revolutionary global dictionary and an innovative application to learn new languages in web, Android, iOS and multiple platforms. I started here as a Senior Full-stack Developer and made my way up to Head of Engineering in 2020.',
      [
        'Flutter',
        'BLoC',
        'Firebase',
        'Next.js (Lots of SEO)',
        'React',
        'Redux',
        'GraphQL',
        'Node.js',
        'TypeScript',
        'MongoDB',
        'PostgreSQL',
        'Firebase',
        'Amazon Web Services',
      ]),
  Project(
      'PatientPal',
      'Full-stack developer | 2019 - 2019',
      'Awesome place where I worked my path in Angular, AWS, and Node + TypeScript remotely for Boston, MA, developing a stunning medical application.',
      [
        'Angular',
        'Redux',
        'Electron',
        'Node.js',
        'TypeScript',
        'Amazon Web Services',
        'DynamoDB',
      ]),
  Project(
      'BinPar',
      'Software Engineer | 2018 - 2019',
      'Great company where I could start my game development, web and native applications career. I started working remotely for this company from Marbella Area in July 2019.',
      [
        'Unity',
        'Next.js',
        'React',
        'React Native',
        'Redux',
        'GraphQL',
        'Node.js',
        'Mongoose',
        'MongoDB',
      ]),
];
