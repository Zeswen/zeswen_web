import 'package:flutter/material.dart';

import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_analytics/observer.dart';

import './pages/about.dart';
import './pages/home.dart';
import './pages/contact.dart';

import './constants.dart';
import './images.dart';
import './routes.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  App({Key key}) : super(key: key);
  final FirebaseAnalytics analytics = FirebaseAnalytics();

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
  const Root({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        initialIndex: 1,
        child: Scaffold(
            appBar: _appBar(context),
            body: TabBarView(
              children: [
                About(),
                const Home(),
                const Contact(),
              ],
            ),
            bottomNavigationBar: _tabBar));
  }

  Widget _appBar(BuildContext context) {
    return AppBar(
      title: SizedBox(height: kToolbarHeight, child: Images.logo(context)),
      centerTitle: true,
    );
  }

  Widget get _tabBar {
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
