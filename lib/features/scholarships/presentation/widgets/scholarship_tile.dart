import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:scholarships/features/favorites/presentation/favorites_bloc.dart';
import 'package:scholarships/features/scholarships/domain/entities/scholarship_entity.dart';
import 'package:url_launcher/url_launcher.dart';

class ScholarshipTile extends StatelessWidget {
  final ScholarshipEntity scholarshipEntity;

  const ScholarshipTile({super.key, required this.scholarshipEntity});

  @override
  Widget build(BuildContext context) {
    final Uri url = Uri.parse(scholarshipEntity.link);

    return BlocBuilder<FavoritesBloc, FavoritesState>(
      builder: (context, state) {
        final bool isFavorite = state.maybeWhen(
          loaded: (favorites) => favorites.contains(scholarshipEntity),
          orElse: () => false,
        );

        return GestureDetector(
          onTap: () async =>
              await launchUrl(url, mode: LaunchMode.inAppWebView),
          child: Container(
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12.0),
              border: Border.all(width: 1.0),
            ),
            padding: const EdgeInsets.all(12.0),
            child: Stack(
              children: [
                IntrinsicHeight(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 40,
                        child: Image.asset(
                          'assets/img/3047937.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(width: 12.0),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(scholarshipEntity.title),
                            const SizedBox(height: 8.0),
                            Text(
                              (scholarshipEntity.deadline?.isEmpty ?? true)
                                  ? 'Czekamy na termin'
                                  : 'Termin: ${scholarshipEntity.deadline}',
                            ),
                            const SizedBox(height: 8.0),
                            Text('Organizator: ${scholarshipEntity.organizer}'),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  right: 0,
                  top: 0,
                  child: IconButton(
                    icon: Icon(
                      isFavorite ? Icons.favorite : Icons.favorite_border,
                      color: Colors.red,
                    ),
                    onPressed: () {
                      final FavoritesBloc bloc = context.read<FavoritesBloc>();
                      isFavorite
                          ? bloc.add(
                              FavoritesEvent.removeTile(
                                tile: scholarshipEntity,
                              ),
                            )
                          : bloc.add(
                              FavoritesEvent.addTile(tile: scholarshipEntity),
                            );
                    },
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
