import 'package:flutter/material.dart';

import './pages/pages.dart' show Home;
import './pages/pages.dart' as pages show Stack;

typedef PathWidgetBuilder = Widget Function(BuildContext, String?);

class Path {
  const Path({required this.pattern, required this.builder});

  final String pattern;
  final PathWidgetBuilder builder;
}

class MainRouteConfiguration {
  static List<Path> paths = [
    Path(
      pattern: r'/',
      builder: (context, match) => const Home(),
    ),
  ];

  static Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    for (final path in paths) {
      final regExpPattern = RegExp(path.pattern);
      if (regExpPattern.hasMatch(settings.name!)) {
        final firstMatch = regExpPattern.firstMatch(settings.name!);
        if (firstMatch != null) {
          final match =
              (firstMatch.groupCount == 1) ? firstMatch.group(1) : null;
          return MaterialPageRoute<void>(
            builder: (context) => path.builder(context, match),
            settings: settings,
          );
        }
      }
    }

    return null;
  }
}

class StackDrawerRouteConfiguration {
  static Set<Path> paths = {
    Path(
      pattern: r'/',
      builder: (context, match) => const pages.Stack(),
    ),
  };

  static Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    for (final path in paths) {
      final regExpPattern = RegExp(path.pattern);
      if (regExpPattern.hasMatch(settings.name!)) {
        final firstMatch = regExpPattern.firstMatch(settings.name!);
        if (firstMatch != null) {
          final match =
              (firstMatch.groupCount == 1) ? firstMatch.group(1) : null;
          return MaterialPageRoute<void>(
            builder: (context) => path.builder(context, match),
            settings: settings,
          );
        }
      }
    }

    return null;
  }
}
