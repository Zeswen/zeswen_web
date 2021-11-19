import 'package:flutter/material.dart';

class Images {
  const Images._();

  static String _asset(BuildContext context, String path) {
    final theme =
        Theme.of(context).brightness == Brightness.light ? 'light' : 'dark';

    return 'assets/images/$theme/$path';
  }

  static Image logo(BuildContext context) => Image.asset(
        _asset(context, 'logo.png'),
        fit: BoxFit.contain,
        filterQuality: FilterQuality.high,
        isAntiAlias: true,
      );
}
