import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:scholarships/core/theme/snackbar.dart';
import 'package:scholarships/features/scholarships/presentation/bloc/scholarships_bloc.dart';
import 'package:scholarships/features/scholarships/presentation/widgets/scholarships_body.dart';

class ScholarshipsScreen extends StatelessWidget {
  const ScholarshipsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ScholarshipsBloc, ScholarshipsState>(
      listener: (context, state) {
        if (state is Error) {
          showErrorSnackBar(context, state.errorMessage);
        }
      },
      buildWhen: (_, current) => current is! Error,
      builder: (context, state) {
        if (state is Loading) {
          context.read<ScholarshipsBloc>().add(
            const ScholarshipsEvent.getScholarships(),
          );
        }

        return const Scaffold(body: SafeArea(child: ScholarshipsBody()));
      },
    );
  }
}
