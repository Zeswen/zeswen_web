import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class AppListTile extends StatelessWidget {
  const AppListTile(
      {Key key, @required this.title, @required this.subtitle, this.onTap})
      : super(key: key);

  final String title;
  final String subtitle;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      title: AutoSizeText(title, textAlign: TextAlign.center),
      subtitle: AutoSizeText(subtitle, textAlign: TextAlign.center),
    );
  }
}
