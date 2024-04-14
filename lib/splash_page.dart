import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:navigation_with_gorouter/router/router.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  void goHome(BuildContext context) {
    Future.delayed(Durations.extralong4, () {
      context.go(AppRouter.homePath.path());
    });
  }

  @override
  Widget build(BuildContext context) {
    goHome(context);
    return const Scaffold(body: Center(child: Text("Splash Page")));
  }
}
