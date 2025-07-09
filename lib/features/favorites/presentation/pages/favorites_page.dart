import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:scholarships/features/favorites/presentation/favorites_bloc.dart';
import 'package:scholarships/features/scholarships/presentation/widgets/scholarship_tile.dart';

class FavoritesScreen extends StatelessWidget {
  const FavoritesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Ulubione')),
      body: BlocBuilder<FavoritesBloc, FavoritesState>(
        builder: (context, state) {
          return state.maybeWhen(
            loaded: (favorites) => ListView.builder(
              itemCount: favorites.length,
              itemBuilder: (context, index) {
                final fav = favorites[index];
                return ScholarshipTile(scholarshipEntity: fav);
              },
            ),
            orElse: () => const Center(child: Text('Brak ulubionych')),
          );
        },
      ),
    );
  }
}
