import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:scholarships/core/addons/main_run.dart';
import 'package:scholarships/core/di/injection_containter.dart';
import 'package:scholarships/core/router/routes.dart';
import 'package:scholarships/core/theme/theme.dart';
import 'package:scholarships/features/favorites/presentation/favorites_bloc.dart';
import 'package:scholarships/features/filters/presentation/bloc/filters_bloc.dart';
import 'package:scholarships/features/override_theme/domain/theme_entity.dart';
import 'package:scholarships/features/override_theme/presentation/cubit/override_theme_cubit.dart';

Future<void> main() async {
  await dotenv.load();
  await MainMethods.mainAddon();

  runApp(const Scholarships());
}

class Scholarships extends StatelessWidget {
  const Scholarships({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<OverrideThemeCubit>(
          create: (_) => locator<OverrideThemeCubit>(),
        ),
        BlocProvider<FavoritesBloc>(create: (_) => locator<FavoritesBloc>()),
        BlocProvider<FiltersBloc>(create: (_) => FiltersBloc()),
      ],
      child: BlocBuilder<OverrideThemeCubit, ThemeEntity>(
        builder: (context, state) {
          return MaterialApp.router(
            theme: lightTheme,
            darkTheme: darkTheme,
            themeMode: state.theme,
            debugShowCheckedModeBanner: false,
            title: 'Scholarships-App',
            routerConfig: appRouter,
          );
        },
      ),
    );
  }
}
