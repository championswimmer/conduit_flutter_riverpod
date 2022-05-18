import 'package:conduit_flutter_riverpod/config/theme.dart';
import 'package:conduit_flutter_riverpod/router/app_router.dart';
import 'package:conduit_flutter_riverpod/router/auth_guard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  final _appRouter = AppRouter(authGuard: AuthGuard());

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final defaultTheme = Theme.of(context);
    return MaterialApp.router(
      title: 'Flutter Demo',
      routeInformationParser: _appRouter.defaultRouteParser(),
      routerDelegate: _appRouter.delegate(),
      theme: ThemeData(
        primarySwatch: AppTheme.primarySwatch,
        textTheme: AppTheme.textTheme,
        elevatedButtonTheme: AppTheme.elevatedButtonTheme(defaultTheme),
      ),
    );
  }
}
