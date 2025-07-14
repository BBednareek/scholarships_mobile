import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:scholarships/features/filters/presentation/bloc/filters_bloc.dart';
import 'package:scholarships/features/scholarships/presentation/bloc/scholarships_bloc.dart';
import 'package:scholarships/features/scholarships/presentation/widgets/scholarship_tile.dart';

class ScholarshipsList extends StatelessWidget {
  const ScholarshipsList({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return BlocBuilder<ScholarshipsBloc, ScholarshipsState>(
      builder: (context, scholarshipsState) {
        return BlocBuilder<FiltersBloc, FiltersState>(
          builder: (context, filtersState) {
            if (scholarshipsState is Loading) {
              return const Center(child: CircularProgressIndicator());
            }

            final bool isFiltering = filtersState.filtresApplied;

            final List<dynamic> listToShow = isFiltering
                ? filtersState.filtered
                : (scholarshipsState is Loaded
                      ? scholarshipsState.scholarships
                      : []);

            if (listToShow.isEmpty) {
              return Center(
                child: Text(
                  'Brak wyników',
                  style: theme.textTheme.bodyMedium?.copyWith(
                    color: theme.colorScheme.onSurface.withValues(alpha: .7),
                  ),
                ),
              );
            }

            return Container(
              color: theme.scaffoldBackgroundColor,
              child: ListView.builder(
                itemCount: listToShow.length,
                padding: const EdgeInsets.only(bottom: 100),
                itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.all(8),
                  child: Container(
                    decoration: BoxDecoration(
                      color: theme.colorScheme.surface,
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: [
                        BoxShadow(
                          color: theme.shadowColor.withValues(alpha: .05),
                          blurRadius: 4,
                          offset: const Offset(0, 2),
                        ),
                      ],
                    ),
                    child: ScholarshipTile(
                      scholarshipEntity: listToShow[index],
                    ),
                  ),
                ),
              ),
            );
          },
        );
      },
    );
  }
}
