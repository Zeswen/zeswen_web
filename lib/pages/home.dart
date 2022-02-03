import 'package:flutter/material.dart';

import 'package:auto_size_text/auto_size_text.dart';

import '../texts.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Center(
        child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FittedBox(
                    fit: BoxFit.fitWidth,
                    child: AutoSizeText(
                      Texts.homeTitle1,
                      style: textTheme.headline1,
                      textAlign: TextAlign.center,
                      overflow: TextOverflow.ellipsis,
                    )),
                const Divider(),
                AutoSizeText(
                  Texts.homeSubtitle1,
                  style: textTheme.subtitle1,
                  textAlign: TextAlign.center,
                ),
                AutoSizeText(
                  Texts.homeSubtitle2,
                  style: textTheme.subtitle1,
                  textAlign: TextAlign.center,
                )
              ],
            )));
  }
}
