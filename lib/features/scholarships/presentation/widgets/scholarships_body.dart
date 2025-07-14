import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:scholarships/features/override_theme/domain/theme_entity.dart';
import 'package:scholarships/features/override_theme/presentation/cubit/override_theme_cubit.dart';
import 'package:scholarships/features/scholarships/presentation/widgets/scholarship_list.dart';
import 'package:scholarships/features/scholarships/presentation/widgets/scholarships_fab.dart';

class ScholarshipsBody extends StatelessWidget {
  const ScholarshipsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16),
              child: BlocBuilder<OverrideThemeCubit, ThemeEntity>(
                builder: (context, state) {
                  return Row(
                    children: [
                      const Text('Tryb ciemny'),
                      const Spacer(),
                      Switch(
                        value: state.isDark,
                        onChanged: (value) {
                          context.read<OverrideThemeCubit>().changeTheme(
                            false,
                            value,
                          );
                        },
                      ),
                    ],
                  );
                },
              ),
            ),
            const Expanded(child: ScholarshipsList()),
          ],
        ),
        const ScholarshipsFAB(),
      ],
    );
  }
}
