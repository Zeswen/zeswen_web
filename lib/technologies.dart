enum Skill {
  semiProfessional,
  professional,
  master,
}

class Technology {
  const Technology(this.technology, this.skill);

  String get skillString {
    switch (skill) {
      case Skill.master:
        return 'Master';

      case Skill.professional:
        return 'Professional';
      case Skill.semiProfessional:
        return 'Semi-professional';
      default:
        return '-';
    }
  }

  final String technology;
  final Skill skill;
}

const technologies = [
  Technology('Flutter', Skill.master),
  Technology('React', Skill.master),
  Technology('Next.js', Skill.master),
  Technology('Redux', Skill.master),
  Technology('Node.js', Skill.master),
  Technology('MongoDB', Skill.master),
  Technology('Git', Skill.master),
  Technology('Firebase', Skill.master),
  Technology('HTML', Skill.master),
  Technology('JavaScript', Skill.master),
  Technology('TypeScript', Skill.master),
  Technology('Angular', Skill.professional),
  Technology('Unity', Skill.professional),
  Technology('React Native', Skill.professional),
  Technology('GraphQL', Skill.professional),
  Technology('PostgreSQL', Skill.professional),
  Technology('Amazon Web Services', Skill.professional),
  Technology('CSS', Skill.professional),
  Technology('C#', Skill.professional),
  Technology('Unreal Engine 4', Skill.semiProfessional),
  Technology('Android', Skill.semiProfessional),
  Technology('Java', Skill.semiProfessional),
  Technology('C++', Skill.semiProfessional),
  Technology('Go', Skill.semiProfessional),
];
