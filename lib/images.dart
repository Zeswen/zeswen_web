import 'package:flutter/material.dart';

class Images {
  const Images._();

  static AssetImage _assetImage(BuildContext context, {required String path}) {
    final theme =
        Theme.of(context).brightness == Brightness.light ? 'light' : 'dark';

    return AssetImage('assets/images/$theme/$path');
  }

  static Image logo(BuildContext context) => Image(
        image: _assetImage(context, path: 'logo.png'),
        fit: BoxFit.contain,
        filterQuality: FilterQuality.high,
        isAntiAlias: true,
      );
}
