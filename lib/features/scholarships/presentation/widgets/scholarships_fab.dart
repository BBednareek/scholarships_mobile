import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:scholarships/features/filters/presentation/widgets/filters_bottom_sheet.dart';
import 'package:scholarships/features/scholarships/presentation/bloc/scholarships_bloc.dart';

class ScholarshipsFAB extends StatelessWidget {
  const ScholarshipsFAB({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);

    final Color backgroundColor = theme.colorScheme.surface.withValues(
      alpha: .9,
    );
    final Color borderColor = theme.colorScheme.primary;
    final Color iconColor = theme.colorScheme.onSurface;

    return Stack(
      children: [
        Positioned(
          left: 16,
          bottom: 16,
          child: GestureDetector(
            onTap: () => context.push('/favorites'),
            child: Container(
              width: 56,
              height: 56,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: backgroundColor,
                border: Border.all(color: Colors.red),
              ),
              child: const Center(
                child: Icon(Icons.favorite, color: Colors.red),
              ),
            ),
          ),
        ),

        // Filter button
        Positioned(
          right: 16,
          bottom: 16,
          child: GestureDetector(
            onTap: () {
              final state = context.read<ScholarshipsBloc>().state;
              if (state is Loaded) {
                showFiltersBottomSheet(
                  context: context,
                  allScholarships: state.scholarships,
                );
              }
            },
            child: Container(
              width: 56,
              height: 56,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: backgroundColor,
                border: Border.all(color: borderColor),
              ),
              child: Icon(Icons.filter_list, color: iconColor),
            ),
          ),
        ),
      ],
    );
  }
}
