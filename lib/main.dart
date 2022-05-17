import 'package:conduit_flutter_riverpod/config/theme.dart';
import 'package:conduit_flutter_riverpod/router/app_router.dart';
import 'package:conduit_flutter_riverpod/router/auth_guard.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  final _appRouter = AppRouter(authGuard: AuthGuard());

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Demo',
      routeInformationParser: _appRouter.defaultRouteParser(),
      routerDelegate: _appRouter.delegate(),
      theme: ThemeData(primarySwatch: AppTheme.primarySwatch, textTheme: AppTheme.textTheme),
    );
  }
}
