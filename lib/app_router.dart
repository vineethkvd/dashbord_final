import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../view.dart';
import '../../widgets/breadcrumbs.dart';
import '../../widgets/custom_drawer.dart';

final GlobalKey<NavigatorState> _rootNavigatorKey = GlobalKey<NavigatorState>();

final GoRouter appRouter = GoRouter(
  navigatorKey: _rootNavigatorKey,
  initialLocation: '/dashboard',
  routes: [
    ShellRoute(
      builder: (context, state, child) {
        return DashboardShell(child: child); // DashboardShell keeps drawer & breadcrumbs
      },
      routes: [
        GoRoute(
          path: '/dashboard',
          builder: (context, state) => const DashboardHome(),
          routes: [ // Nested routes under '/dashboard'
            GoRoute(
              path: 'view', // Remove leading '/'
              builder: (context, state) => const ProductView(),
            ),
            GoRoute(
              path: 'add', // Remove leading '/'
              builder: (context, state) => const ProductAdd(),
            ),
            GoRoute(
              path: 'update', // Remove leading '/'
              builder: (context, state) => const ProductUpdate(),
            ),
            GoRoute(
              path: 'delete', // Remove leading '/'
              builder: (context, state) => const ProductDelete(),
            ),
          ],
        ),
      ],
    ),
  ],
);

class DashboardShell extends StatelessWidget {
  final Widget child;

  const DashboardShell({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          const CustomDrawer(),
          Expanded(
            child: Column(
              children: [
                const Breadcrumbs(),
                Expanded(child: child),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
