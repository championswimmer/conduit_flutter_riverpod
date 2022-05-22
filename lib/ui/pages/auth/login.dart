import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class LoginPage extends ConsumerWidget {
  const LoginPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: (const Text("Login")),
      ),
      body: Center(
        child: Column(
          children: [
            Text("login"),
            CloseButton(
              onPressed: () {
                context.router.pop();
              },
            )
          ],
        ),
      ),
    );
  }
}
