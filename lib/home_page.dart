import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'router/router.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.home_outlined),
          onPressed: () => context.go(AppRouter.homePath.path()),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.account_box_outlined),
            onPressed: () => context.go(AppRouter.profilePath.path()),
          )
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text("Home Page"),
            TextButton(
              onPressed: () => context.go(AppRouter.detailsPath.path()),
              child: const Text("Go Details Page"),
            ),
          ],
        ),
      ),
    );
  }
}
