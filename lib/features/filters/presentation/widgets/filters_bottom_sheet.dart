import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:scholarships/features/filters/presentation/bloc/filters_bloc.dart';
import 'package:scholarships/features/filters/presentation/widgets/location_filter_dropdown.dart';
import 'package:scholarships/features/filters/presentation/widgets/organizer_filter_dropdown.dart';
import 'package:scholarships/features/filters/presentation/widgets/sort_order_selector.dart';
import 'package:scholarships/features/scholarships/domain/entities/scholarship_entity.dart';

void showFiltersBottomSheet({
  required BuildContext context,
  required List<ScholarshipEntity> allScholarships,
}) {
  String? selectedOrganizer = context.read<FiltersBloc>().state.organizer;
  String? selectedLocation = context.read<FiltersBloc>().state.location;
  bool sortAsc = context.read<FiltersBloc>().state.sortByDeadlineAsc;

  final theme = Theme.of(context);
  final textColor = theme.colorScheme.onSurface;

  showModalBottomSheet(
    useRootNavigator: true,
    context: context,
    isScrollControlled: true,
    backgroundColor: theme.colorScheme.surface,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(top: Radius.circular(16.0)),
    ),
    builder: (BuildContext context) {
      return StatefulBuilder(
        builder: (context, setState) => Padding(
          padding: const EdgeInsets.fromLTRB(16, 16, 16, 32),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'Filtruj wyniki',
                style: theme.textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: textColor,
                ),
              ),
              const SizedBox(height: 20),

              OrganizerFilterDropdown(
                value: selectedOrganizer,
                onChanged: (value) => setState(() => selectedOrganizer = value),
              ),

              const SizedBox(height: 16),

              LocationFilterDropdown(
                value: selectedLocation,
                onChanged: (value) => setState(() => selectedLocation = value),
              ),

              const SizedBox(height: 16),

              SortOrderSelector(
                ascending: sortAsc,
                onChanged: (value) => setState(() => sortAsc = value),
              ),

              const SizedBox(height: 24),

              ElevatedButton(
                onPressed: () {
                  final bloc = context.read<FiltersBloc>();
                  bloc.add(FiltersEvent.setOrganizerFilter(selectedOrganizer));
                  bloc.add(FiltersEvent.setLocationFilter(selectedLocation));
                  bloc.add(FiltersEvent.setSortByDeadline(sortAsc));
                  bloc.add(FiltersEvent.apply(allScholarships));
                  context.pop();
                },
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(double.infinity, 48),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  backgroundColor: theme.colorScheme.primary,
                  foregroundColor: theme.colorScheme.onPrimary,
                ),
                child: const Text('Zastosuj filtry'),
              ),

              const SizedBox(height: 12),

              TextButton(
                onPressed: () {
                  final bloc = context.read<FiltersBloc>();
                  bloc.add(const FiltersEvent.clear());
                  bloc.add(FiltersEvent.apply(allScholarships));
                  context.pop();
                },
                style: TextButton.styleFrom(foregroundColor: textColor),
                child: const Text('Wyczyść filtry'),
              ),
            ],
          ),
        ),
      );
    },
  );
}
