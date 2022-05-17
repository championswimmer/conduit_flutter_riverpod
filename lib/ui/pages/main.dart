import 'package:auto_route/auto_route.dart';
import 'package:conduit_flutter_riverpod/router/app_router.dart';
import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Conduit"),
      ),
      body: AutoTabsScaffold(
        routes: const [
          GlobalFeedRoute(),
          MyFeedRoute(),
          ViewProfileRoute()
        ],
        bottomNavigationBuilder: (context, tabsRouter) =>
            BottomNavigationBar(
                currentIndex: tabsRouter.activeIndex,
                onTap: tabsRouter.setActiveIndex,
                items: const [
                  BottomNavigationBarItem(icon: Icon(Icons.list_alt), label: "Home"),
                  BottomNavigationBarItem(icon: Icon(Icons.rss_feed), label: "Feed"),
                  BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile")
                ]
            ),
      ),
    );
  }
}
