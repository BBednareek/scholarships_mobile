import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:scholarships/core/di/injection_containter.dart';
import 'package:scholarships/features/favorites/presentation/pages/favorites_page.dart';
import 'package:scholarships/features/scholarships/presentation/bloc/scholarships_bloc.dart';
import 'package:scholarships/features/scholarships/presentation/pages/scholarship_screen.dart';

final GoRouter appRouter = GoRouter(
  initialLocation: '/main',
  routes: [
    simpleRoute(
      path: '/main',
      builder: (context, state) => BlocProvider(
        create: (_) =>
            ScholarshipsBloc(scholarshipsUsecase: locator())
              ..add(const ScholarshipsEvent.getScholarships()),
        child: const ScholarshipsScreen(),
      ),
    ),
    simpleRoute(path: '/favorites', builder: (_, _) => const FavoritesScreen()),
  ],
);

GoRoute simpleRoute({
  required String path,
  required Widget Function(BuildContext, GoRouterState) builder,
}) => GoRoute(
  path: path,
  pageBuilder: (context, state) =>
      MaterialPage(key: state.pageKey, child: builder(context, state)),
);
