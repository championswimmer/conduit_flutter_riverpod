// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

part of 'app_router.dart';

class _$AppRouter extends RootStackRouter {
  _$AppRouter(
      {GlobalKey<NavigatorState>? navigatorKey, required this.authGuard})
      : super(navigatorKey);

  final AuthGuard authGuard;

  @override
  final Map<String, PageFactory> pagesMap = {
    MainRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const MainPage());
    },
    LoginRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const LoginPage());
    },
    GlobalFeedRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const GlobalFeedPage());
    },
    MyFeedRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const MyFeedPage());
    },
    ViewProfileRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const ViewProfilePage());
    }
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig(MainRoute.name, path: '/', children: [
          RouteConfig(GlobalFeedRoute.name, path: '', parent: MainRoute.name),
          RouteConfig(MyFeedRoute.name,
              path: 'feed', parent: MainRoute.name, guards: [authGuard]),
          RouteConfig(ViewProfileRoute.name,
              path: 'profile', parent: MainRoute.name, guards: [authGuard])
        ]),
        RouteConfig(LoginRoute.name, path: '/login')
      ];
}

/// generated route for
/// [MainPage]
class MainRoute extends PageRouteInfo<void> {
  const MainRoute({List<PageRouteInfo>? children})
      : super(MainRoute.name, path: '/', initialChildren: children);

  static const String name = 'MainRoute';
}

/// generated route for
/// [LoginPage]
class LoginRoute extends PageRouteInfo<void> {
  const LoginRoute() : super(LoginRoute.name, path: '/login');

  static const String name = 'LoginRoute';
}

/// generated route for
/// [GlobalFeedPage]
class GlobalFeedRoute extends PageRouteInfo<void> {
  const GlobalFeedRoute() : super(GlobalFeedRoute.name, path: '');

  static const String name = 'GlobalFeedRoute';
}

/// generated route for
/// [MyFeedPage]
class MyFeedRoute extends PageRouteInfo<void> {
  const MyFeedRoute() : super(MyFeedRoute.name, path: 'feed');

  static const String name = 'MyFeedRoute';
}

/// generated route for
/// [ViewProfilePage]
class ViewProfileRoute extends PageRouteInfo<void> {
  const ViewProfileRoute() : super(ViewProfileRoute.name, path: 'profile');

  static const String name = 'ViewProfileRoute';
}
