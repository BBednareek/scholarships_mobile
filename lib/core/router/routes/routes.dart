import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:scholarships/features/favorites/presentation/pages/favorites_page.dart';
import 'package:scholarships/features/scholarships/presentation/pages/scholarship_page.dart';

final GoRouter appRouter = GoRouter(
  initialLocation: '/main',
  routes: [
    // simpleRoute(
    //   path: '/no-internet',
    //   builder: (_, __) => const NoInternetScreen(),
    // ),
    simpleRoute(path: '/main', builder: (_, _) => const ScholarshipsScreen()),
    simpleRoute(path: '/favorites', builder: (_, _) => const FavoritesScreen()),
    // simpleRoute(path: '/filters', builder: (_, __) => const FiltersPage()),
    // simpleRoute(path: '/error', builder: (_, __) => const ErrorScreen()),
  ],

  redirect: (context, state) {
    if (state.error != null) return '/error';

    return null;
  },
);

GoRoute simpleRoute({
  required String path,
  required Widget Function(BuildContext, GoRouterState) builder,
}) => GoRoute(
  path: path,
  pageBuilder: (context, state) => CustomTransitionPage(
    key: state.pageKey,
    transitionDuration: const Duration(milliseconds: 0),
    reverseTransitionDuration: const Duration(milliseconds: 0),
    child: builder(context, state),
    transitionsBuilder: (_, _, _, child) => child,
  ),
);
