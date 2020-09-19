import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';

import '../texts.dart';
import '../technologies.dart';
import './technologies.dart';

class Stack extends StatelessWidget {
  const Stack({Key key}) : super(key: key);

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
        _card(context, Texts.stackDrawerDescriptionTitle3,
            Texts.stackDrawerDescriptionSubtitle3, '/master', Skill.master),
        _card(
            context,
            Texts.stackDrawerDescriptionTitle2,
            Texts.stackDrawerDescriptionSubtitle2,
            '/professional',
            Skill.professional),
        _card(
            context,
            Texts.stackDrawerDescriptionTitle1,
            Texts.stackDrawerDescriptionSubtitle1,
            '/semi-professional',
            Skill.semiProfessional),
      ],
    );
  }

  Widget _transitionBuilder(BuildContext context, Animation<double> animation,
      Animation<double> anotherAnimation, child) {
    animation = CurvedAnimation(curve: Curves.easeInOut, parent: animation);
    return Align(
        child: SlideTransition(
      position: Tween(begin: Offset(1.0, 0.0), end: Offset(0.0, 0.0))
          .animate(animation),
      child: child,
    ));
  }

  Widget _card(BuildContext context, String title, String subtitle,
      String route, Skill skill) {
    return Card(
      child: Column(
        children: [
          ListTile(
            title: AutoSizeText(title,
                style: Theme.of(context).textTheme.bodyText1),
            subtitle: AutoSizeText(subtitle,
                style: Theme.of(context).textTheme.bodyText2),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: () {
              Navigator.of(context).push(PageRouteBuilder(
                pageBuilder: (context, animation, anotherAnimation) {
                  return Technologies(skill);
                },
                transitionDuration: Duration(milliseconds: 250),
                transitionsBuilder: _transitionBuilder,
              ));
            },
          ),
        ],
      ),
    );
  }
}
