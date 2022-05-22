import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:state_notifier/state_notifier.dart';

class AuthTokenNotifier extends StateNotifier<String> {
  AuthTokenNotifier() : super("");

  void authenticate(String token) {
    debugPrint("authenticate =========== ");
    state = token;
  }

  bool get isAuthenticated => state.isNotEmpty;
}
