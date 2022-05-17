import 'package:auto_route/auto_route.dart';
import 'package:conduit_flutter_riverpod/router/auth_guard.dart';
import 'package:conduit_flutter_riverpod/ui/pages/feed/global_feed.dart';
import 'package:conduit_flutter_riverpod/ui/pages/feed/my_feed.dart';
import 'package:conduit_flutter_riverpod/ui/pages/profile/view_profile.dart';
import 'package:flutter/material.dart';

import '../ui/pages/main.dart';

part 'app_router.gr.dart';

@MaterialAutoRouter(
    replaceInRouteName: 'Page,Route',
    routes: [
      AutoRoute(page: MainPage, initial: true, guards: [AuthGuard], path: "/",
        children: [
          AutoRoute(page: GlobalFeedPage, initial: true, path: ""),
          AutoRoute(page: MyFeedPage, path: "feed"),
          AutoRoute(page: ViewProfilePage, path: "profile")
        ])
    ],
)
class AppRouter extends _$AppRouter {
  AppRouter({required AuthGuard authGuard}) : super(authGuard: authGuard);
}
