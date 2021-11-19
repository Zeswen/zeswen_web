import 'package:flutter/material.dart';

import '../routes.dart';

class StackDrawer extends StatelessWidget {
  const StackDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Drawer(
        child: Navigator(
      onGenerateRoute: StackDrawerRouteConfiguration.onGenerateRoute,
    ));
  }
}
