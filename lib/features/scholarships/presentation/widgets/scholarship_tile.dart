import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:scholarships/core/addons/scholarships_equality_checker.dart';
import 'package:scholarships/features/favorites/presentation/favorites_bloc.dart';
import 'package:scholarships/features/scholarships/domain/entities/scholarship_entity.dart';
import 'package:url_launcher/url_launcher.dart';

class ScholarshipTile extends StatelessWidget {
  final ScholarshipEntity scholarshipEntity;

  const ScholarshipTile({super.key, required this.scholarshipEntity});

  @override
  Widget build(BuildContext context) {
    final Uri url = Uri.parse(scholarshipEntity.link);
    final theme = Theme.of(context);

    return BlocBuilder<FavoritesBloc, FavoritesState>(
      builder: (context, state) {
        final bool isFavorite = state.maybeWhen(
          loaded: (favorites) => favorites.any(
            (fav) => areScholarshipsEqual(fav, scholarshipEntity),
          ),
          orElse: () => false,
        );

        return GestureDetector(
          onTap: () async {
            await launchUrl(url, mode: LaunchMode.inAppWebView);
          },
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: theme.colorScheme.surface,
              borderRadius: BorderRadius.circular(12.0),
              border: Border.all(
                width: 1.0,
                color: theme.dividerColor.withValues(alpha: 0.3),
              ),
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
                        height: 40,
                        child: Image.asset(
                          'assets/img/3047937.png',
                          fit: BoxFit.cover,
                          color: theme.colorScheme.onSurface,
                        ),
                      ),
                      const SizedBox(width: 12.0),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              scholarshipEntity.title,
                              style: theme.textTheme.bodyMedium?.copyWith(
                                fontWeight: FontWeight.w600,
                                color: theme.colorScheme.onSurface,
                              ),
                            ),
                            const SizedBox(height: 8.0),
                            Text(
                              (scholarshipEntity.deadline?.isEmpty ?? true)
                                  ? 'Czekamy na termin'
                                  : 'Termin: ${scholarshipEntity.deadline}',
                              style: theme.textTheme.bodySmall?.copyWith(
                                color: theme.colorScheme.onSurface.withValues(
                                  alpha: 0.7,
                                ),
                              ),
                            ),
                            const SizedBox(height: 8.0),
                            Text(
                              scholarshipEntity.organizer.isNotEmpty
                                  ? 'Organizator: ${scholarshipEntity.organizer}'
                                  : 'Brak informacji o organizatorze',
                              style: theme.textTheme.bodySmall?.copyWith(
                                color: theme.colorScheme.onSurface.withValues(
                                  alpha: 0.7,
                                ),
                              ),
                            ),
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
                      final bloc = context.read<FavoritesBloc>();
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
