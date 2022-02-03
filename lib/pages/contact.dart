import 'package:flutter/material.dart';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:url_launcher/url_launcher.dart';

import '../widgets/app_list_tile.dart';
import '../texts.dart';

class Contact extends StatelessWidget {
  const Contact({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Center(
        child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AutoSizeText(
                  Texts.contactTitle1,
                  style: textTheme.headline2,
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
                            child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            _listTile(
                                Texts.contactTileTitle1,
                                Texts.contactTileSubtitle1,
                                Texts.contactTileURL1),
                            _listTile(
                                Texts.contactTileTitle2,
                                Texts.contactTileSubtitle2,
                                Texts.contactTileURL2),
                          ],
                        )),
                        Flexible(
                            child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            _listTile(
                                Texts.contactTileTitle3,
                                Texts.contactTileSubtitle3,
                                Texts.contactTileURL3),
                            _listTile(
                                Texts.contactTileTitle4,
                                Texts.contactTileSubtitle4,
                                Texts.contactTileURL4),
                          ],
                        ))
                      ],
                    ))
              ],
            )));
  }

  Future<void> _launchUrl(String url) async {
    if (await canLaunch(url)) {
      await launch(url, enableJavaScript: true);
    }
  }

  Widget _listTile(
    String title,
    String subtitle,
    String url,
  ) {
    return AppListTile(
      title: title,
      subtitle: subtitle,
      onTap: () async {
        await _launchUrl(url);
      },
    );
  }
}
