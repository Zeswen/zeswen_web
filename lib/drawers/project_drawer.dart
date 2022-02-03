import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import '../projects.dart';
import '../texts.dart';

class ProjectsDrawer extends StatelessWidget {
  const ProjectsDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Drawer(
      child: ListView(
        children: [
          ListTile(
            title: AutoSizeText(
              Texts.projectsDrawerTitle1,
              style: textTheme.headline3,
              textAlign: TextAlign.center,
            ),
            subtitle: AutoSizeText(
              Texts.projectsDrawerSubtitle1,
              style: textTheme.subtitle2,
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
    final textTheme = Theme.of(context).textTheme;

    return Project.projects
        .map((project) => Card(
              child: Column(
                children: [
                  ListTile(
                    leading: Image.asset(
                        'assets/images/projects/${project.company.toLowerCase()}.png'),
                    title: AutoSizeText(
                      project.company,
                      style: textTheme.subtitle1,
                    ),
                    subtitle: AutoSizeText(
                      project.position,
                      style: textTheme.subtitle2,
                    ),
                    isThreeLine: true,
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                    child: AutoSizeText(
                      project.description,
                      style: textTheme.bodyText2,
                    ),
                  ),
                  SizedBox(
                    height: 50,
                    child: ListView.builder(
                      padding: const EdgeInsets.only(right: 12),
                      scrollDirection: Axis.horizontal,
                      itemCount: project.technologies.length,
                      itemBuilder: (context, index) => Chip(
                        label: AutoSizeText(
                          project.technologies.elementAt(index).name,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ))
        .toList();
  }
}
