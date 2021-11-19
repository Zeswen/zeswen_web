import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import '../technologies.dart';

class Technologies extends StatelessWidget {
  const Technologies(this.skill, {Key? key}) : super(key: key);

  final Skill skill;

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Theme.of(context).canvasColor,
        child: ListView(
          children: [
            Row(children: [
              IconButton(
                icon: const Icon(Icons.arrow_back_ios),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              )
            ]),
            ..._technologies(context),
          ],
        ));
  }

  List<Widget> _technologies(context) {
    final techs = technologies.where((tech) => tech.skill == skill).toList();
    return techs
        .map((tech) => Card(
                child: ListTile(
              title: AutoSizeText(
                tech.technology,
                style: Theme.of(context).textTheme.bodyText1,
              ),
              subtitle: AutoSizeText(
                tech.skillString,
                style: Theme.of(context).textTheme.bodyText2,
              ),
            )))
        .toList();
  }
}
