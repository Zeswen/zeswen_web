import 'package:flutter/material.dart';

import 'package:auto_size_text/auto_size_text.dart';

import '../widgets/app_list_tile.dart';
import '../widgets/projects_drawer.dart';
import '../widgets/stack_drawer.dart';
import '../texts.dart';

class About extends StatelessWidget {
  About({Key key})
      : scaffoldKey = GlobalKey<ScaffoldState>(),
        super(key: key);

  final GlobalKey<ScaffoldState> scaffoldKey;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: scaffoldKey,
        drawer: const StackDrawer(),
        endDrawer: const ProjectsDrawer(),
        body: Center(
            child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    AutoSizeText(
                      Texts.aboutTitle1,
                      style: Theme.of(context).textTheme.headline2,
                      textAlign: TextAlign.center,
                    ),
                    const Divider(),
                    FractionallySizedBox(
                        widthFactor: 1,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Flexible(
                                child: _listTile(Texts.aboutTileTitle1,
                                    Texts.aboutTileSubtitle1, true)),
                            Flexible(
                                child: _listTile(Texts.aboutTileTitle2,
                                    Texts.aboutTileSubtitle2, false)),
                          ],
                        )),
                  ],
                ))));
  }

  Widget _listTile(String title, String subtitle, bool primary) {
    return AppListTile(
      title: title,
      subtitle: subtitle,
      onTap: () {
        if (primary) {
          scaffoldKey.currentState.openDrawer();
        } else {
          scaffoldKey.currentState.openEndDrawer();
        }
      },
    );
  }
}
