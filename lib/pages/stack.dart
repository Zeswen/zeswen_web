import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import '../technologies.dart';
import '../texts.dart';
import 'technologies.dart';

class Stack extends StatelessWidget {
  const Stack({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ListTile(
          title: AutoSizeText(
            Texts.stackDrawerTitle1,
            style: Theme.of(context).textTheme.headline3,
            textAlign: TextAlign.center,
          ),
          subtitle: AutoSizeText(
            Texts.stackDrawerSubtitle1,
            style: Theme.of(context).textTheme.subtitle2,
            textAlign: TextAlign.center,
          ),
        ),
        const Divider(),
        _card(
          context: context,
          title: Texts.stackDrawerDescriptionTitle3,
          subtitle: Texts.stackDrawerDescriptionSubtitle3,
          route: '/master',
          skill: Skill.master,
        ),
        _card(
          context: context,
          title: Texts.stackDrawerDescriptionTitle2,
          subtitle: Texts.stackDrawerDescriptionSubtitle2,
          route: '/professional',
          skill: Skill.professional,
        ),
        _card(
          context: context,
          title: Texts.stackDrawerDescriptionTitle1,
          subtitle: Texts.stackDrawerDescriptionSubtitle1,
          route: '/semi-professional',
          skill: Skill.semiProfessional,
        ),
      ],
    );
  }

  Widget _card({
    required BuildContext context,
    required String title,
    required String subtitle,
    required String route,
    required Skill skill,
  }) {
    final textTheme = Theme.of(context).textTheme;

    return Card(
      child: Column(
        children: [
          ListTile(
            title: AutoSizeText(title, style: textTheme.bodyText1),
            subtitle: AutoSizeText(subtitle, style: textTheme.bodyText2),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () {
              Navigator.of(context).push(PageRouteBuilder(
                pageBuilder: (context, animation, anotherAnimation) =>
                    Technologies(skill: skill),
                transitionDuration: const Duration(milliseconds: 250),
                transitionsBuilder: _transitionBuilder,
              ));
            },
          ),
        ],
      ),
    );
  }

  Widget _transitionBuilder(BuildContext context, Animation<double> animation,
      Animation<double> anotherAnimation, child) {
    animation = CurvedAnimation(curve: Curves.easeInOut, parent: animation);
    return Align(
        child: SlideTransition(
      position:
          Tween(begin: const Offset(-1.0, 0.0), end: const Offset(0.0, 0.0))
              .animate(animation),
      child: Opacity(
          opacity: Tween(begin: 0.0, end: 1.0).animate(animation).value,
          child: child),
    ));
  }
}
