import 'package:flutter/material.dart';

import './pages/home.dart';
import './pages/stack.dart' as pages;

typedef PathWidgetBuilder = Widget Function(BuildContext, String?);

class Path {
  const Path(this.pattern, this.builder);

  final String pattern;
  final PathWidgetBuilder builder;
}

class RouteConfiguration {
  static List<Path> paths = [
    Path(
      r'/',
      (context, match) => const Home(),
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
  static List<Path> paths = [
    Path(
      r'/',
      (context, match) => const pages.Stack(),
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
