import 'package:flutter/material.dart';

class Images {
  const Images._();

  static String _getAsset(BuildContext context, String path) {
    final theme =
        Theme.of(context).brightness == Brightness.light ? 'light' : 'dark';

    return 'assets/images/$theme/$path';
  }

  static Image logo(BuildContext context) => Image.asset(
        _getAsset(context, 'logo.png'),
        fit: BoxFit.contain,
      );
}
