import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'constants.dart';
import 'images.dart';
import 'pages/pages.dart';
import 'routes.dart' show MainRouteConfiguration;
import 'texts.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      scrollBehavior: const MaterialScrollBehavior().copyWith(
        dragDevices: {
          PointerDeviceKind.mouse,
          PointerDeviceKind.touch,
          PointerDeviceKind.stylus,
          PointerDeviceKind.unknown
        },
      ),
      title: Constants.title,
      theme: ThemeData.light().copyWith(
        appBarTheme: const AppBarTheme(backgroundColor: Colors.grey),
        tabBarTheme: const TabBarTheme(labelColor: Colors.black54),
      ),
      darkTheme: ThemeData.dark(),
      home: const _Root(),
      navigatorObservers: [
        FirebaseAnalyticsObserver(analytics: FirebaseAnalytics.instance),
      ],
      onGenerateRoute: MainRouteConfiguration.onGenerateRoute,
    );
  }
}

class _Root extends StatelessWidget {
  const _Root({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        initialIndex: 1,
        child: Scaffold(
          appBar: const _AppBar(),
          body: TabBarView(
            children: [
              About(),
              const Home(),
              const Contact(),
            ],
          ),
          bottomNavigationBar: const _TabBar(),
        ));
  }
}

class _AppBar extends StatelessWidget implements PreferredSizeWidget {
  const _AppBar({Key? key}) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: SizedBox(height: kToolbarHeight, child: Images.logo(context)),
      centerTitle: true,
    );
  }
}

class _TabBar extends StatelessWidget {
  const _TabBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const TabBar(
      tabs: [
        Tab(
          icon: Icon(Icons.menu_book),
          text: Texts.aboutTab,
        ),
        Tab(
          icon: Icon(Icons.home),
          text: Texts.homeTab,
        ),
        Tab(
          icon: Icon(Icons.contact_mail),
          text: Texts.contactTab,
        ),
      ],
    );
  }
}
