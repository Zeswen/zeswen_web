import 'package:flutter/material.dart';

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
  const App({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: title,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      darkTheme: ThemeData.dark(),
      home: const Root(),
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
            appBar: _appBar,
            body: const TabBarView(
              children: [
                About(),
                Home(),
                Contact(),
              ],
            ),
            bottomNavigationBar: _tabBar));
  }

  Widget get _appBar {
    return AppBar(
      title: SizedBox(height: kToolbarHeight, child: Images.logo),
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
