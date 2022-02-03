class Skill {
  const Skill._({required this.name});

  final String name;

  static const master = Skill._(name: 'Master');
  static const professional = Skill._(name: 'Profesional');
  static const semiProfessional = Skill._(name: 'Semi-professional');

  static const skills = {
    master,
    professional,
    semiProfessional,
  };
}

class Technology {
  const Technology._({required this.name, required this.skill});

  final String name;
  final Skill skill;

  static const dart = Technology._(name: 'Dart', skill: Skill.master);
  static const flutter = Technology._(name: 'Flutter', skill: Skill.master);
  static const bloc = Technology._(name: 'BLoC', skill: Skill.master);
  static const typeScript =
      Technology._(name: 'TypeScript', skill: Skill.master);
  static const javaScript =
      Technology._(name: 'JavaScript', skill: Skill.master);
  static const nextJs = Technology._(name: 'Next.js', skill: Skill.master);
  static const react = Technology._(name: 'React', skill: Skill.master);
  static const redux = Technology._(name: 'Redux', skill: Skill.master);
  static const nodeJs = Technology._(name: 'Node.js', skill: Skill.master);
  static const firebase = Technology._(name: 'Firebase', skill: Skill.master);
  static const seo = Technology._(name: 'SEO', skill: Skill.master);
  static const git = Technology._(name: 'Git', skill: Skill.master);
  static const html = Technology._(name: 'HTML', skill: Skill.master);
  static const aws =
      Technology._(name: 'Amazon Web Services (AWS)', skill: Skill.master);
  static const mongoDb = Technology._(name: 'MongoDB', skill: Skill.master);
  static const mongoose = Technology._(name: 'Mongoose', skill: Skill.master);
  static const postgreSql =
      Technology._(name: 'PostgreSQL', skill: Skill.master);
  static const css = Technology._(name: 'CSS', skill: Skill.master);
  static const reactNative =
      Technology._(name: 'React Native', skill: Skill.master);

  static const graphql =
      Technology._(name: 'GraphQL', skill: Skill.professional);
  static const unity = Technology._(name: 'Unity', skill: Skill.professional);
  static const rust = Technology._(name: 'Rust', skill: Skill.professional);
  static const electron =
      Technology._(name: 'Electron', skill: Skill.professional);
  static const dynamoDb =
      Technology._(name: 'DynamoDB', skill: Skill.professional);
  static const angular =
      Technology._(name: 'Angular', skill: Skill.professional);
  static const cs = Technology._(name: 'C#', skill: Skill.professional);
  static const kotlin = Technology._(name: 'Kotlin', skill: Skill.professional);
  static const java = Technology._(name: 'Java', skill: Skill.professional);
  static const swift = Technology._(name: 'Swift', skill: Skill.professional);

  static const tailwindCss =
      Technology._(name: 'TailwindCSS', skill: Skill.semiProfessional);
  static const ue4 =
      Technology._(name: 'Unreal Engine 4', skill: Skill.semiProfessional);
  static const python =
      Technology._(name: 'Python', skill: Skill.semiProfessional);
  static const go = Technology._(name: 'Go', skill: Skill.semiProfessional);
  static const cpp = Technology._(name: 'C++', skill: Skill.semiProfessional);

  static const technologies = {
    dart,
    flutter,
    bloc,
    typeScript,
    javaScript,
    nextJs,
    react,
    redux,
    nodeJs,
    firebase,
    seo,
    git,
    html,
    aws,
    mongoDb,
    mongoose,
    postgreSql,
    css,
    reactNative,
    graphql,
    unity,
    rust,
    electron,
    dynamoDb,
    angular,
    cs,
    kotlin,
    java,
    swift,
    tailwindCss,
    ue4,
    python,
    go,
    cpp,
  };
}
