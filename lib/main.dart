import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_analytics/observer.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import './constants.dart';
import './images.dart';
import './pages/about.dart';
import './pages/contact.dart';
import './pages/home.dart';
import './routes.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  final FirebaseAnalytics analytics = FirebaseAnalytics();
  runApp(App(analytics: analytics));
}

class App extends StatelessWidget {
  const App({Key? key, required this.analytics}) : super(key: key);

  final FirebaseAnalytics analytics;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: title,
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      darkTheme: ThemeData.dark(),
      home: const Root(),
      navigatorObservers: [
        FirebaseAnalyticsObserver(analytics: analytics),
      ],
      onGenerateRoute: RouteConfiguration.onGenerateRoute,
    );
  }
}

class Root extends StatelessWidget {
  const Root({Key? key}) : super(key: key);

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
          text: 'About',
        ),
        Tab(
          icon: Icon(Icons.home),
          text: 'Home',
        ),
        Tab(
          icon: Icon(Icons.contact_mail),
          text: 'Contact',
        ),
      ],
    );
  }
}
