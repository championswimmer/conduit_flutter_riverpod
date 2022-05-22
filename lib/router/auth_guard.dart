import 'package:auto_route/auto_route.dart';
import 'package:conduit_flutter_riverpod/data/auth_state_notifier.dart';
import 'package:conduit_flutter_riverpod/router/app_router.dart';
import 'package:flutter/foundation.dart';

class AuthGuard extends AutoRedirectGuard {
  final AuthTokenNotifier authTokenNotifier;

  AuthGuard(this.authTokenNotifier) {
    authTokenNotifier.addListener((state) => reevaluate());
  }

  @override
  Future<bool> canNavigate(RouteMatch<dynamic> route) async {
    debugPrint("canNavigate =========== $authTokenNotifier ${route.path}");
    return authTokenNotifier.isAuthenticated;
  }

  @override
  Future<void> onNavigation(NavigationResolver resolver, StackRouter router) async {
    debugPrint("onNavigation =========== $authTokenNotifier ${router.currentPath}");
    if (await canNavigate(resolver.route)) {
      resolver.next();
    } else {
      redirect(const LoginRoute(), resolver: resolver);
    }
  }
}
