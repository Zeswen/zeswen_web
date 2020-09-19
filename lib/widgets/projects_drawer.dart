import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import '../projects.dart';
import '../texts.dart';

class ProjectsDrawer extends StatelessWidget {
  const ProjectsDrawer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          ListTile(
            title: AutoSizeText(
              Texts.projectsDrawerTitle1,
              style: Theme.of(context).textTheme.headline3,
              textAlign: TextAlign.center,
            ),
            subtitle: AutoSizeText(
              Texts.projectsDrawerSubtitle1,
              style: Theme.of(context).textTheme.subtitle2,
              textAlign: TextAlign.center,
            ),
          ),
          const Divider(),
          ..._cards(context)
        ],
      ),
    );
  }

  List<Widget> _cards(BuildContext context) {
    return projects
        .map((project) => Card(
              child: Column(
                children: [
                  ListTile(
                    leading: Image.asset(
                        'assets/images/projects/${project.company.toLowerCase()}.png'),
                    title: AutoSizeText(project.company,
                        style: Theme.of(context).textTheme.subtitle1),
                    subtitle: AutoSizeText(project.position,
                        style: Theme.of(context).textTheme.subtitle2),
                    isThreeLine: true,
                  ),
                  Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 12, vertical: 8),
                      child: AutoSizeText(project.description,
                          style: Theme.of(context).textTheme.bodyText2)),
                  Container(
                      height: 50,
                      child: ListView(
                        padding: const EdgeInsets.only(right: 12),
                        scrollDirection: Axis.horizontal,
                        children: project.technologies
                            .map((tech) => Chip(
                                  label: AutoSizeText(tech),
                                ))
                            .toList(),
                      ))
                ],
              ),
            ))
        .toList();
  }
}
