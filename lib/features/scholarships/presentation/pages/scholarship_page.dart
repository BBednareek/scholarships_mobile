import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:scholarships/features/scholarships/presentation/bloc/scholarships_bloc.dart';
import 'package:scholarships/features/scholarships/presentation/widgets/scholarship_tile.dart';

class ScholarshipsScreen extends StatefulWidget {
  const ScholarshipsScreen({super.key});

  @override
  State<ScholarshipsScreen> createState() => _ScholarshipsScreenState();
}

class _ScholarshipsScreenState extends State<ScholarshipsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              children: [
                BlocListener<ScholarshipsBloc, ScholarshipsState>(
                  listener: (context, state) {},
                  child: const Text(''),
                ),
                Expanded(
                  child: BlocBuilder<ScholarshipsBloc, ScholarshipsState>(
                    builder: (context, state) {
                      return state.maybeWhen(
                        loading: () => Center(
                          child: CircularProgressIndicator(
                            color: Theme.of(context).colorScheme.secondary,
                          ),
                        ),
                        loaded: (scholarships) => ListView.builder(
                          itemCount: scholarships.length,
                          itemBuilder: (context, index) {
                            final scholarship = scholarships[index];
                            return Padding(
                              padding: const EdgeInsets.all(8),
                              child: ScholarshipTile(
                                scholarshipEntity: scholarship,
                              ),
                            );
                          },
                        ),
                        orElse: () => const SizedBox(),
                      );
                    },
                  ),
                ),
              ],
            ),
            Positioned(
              left: 16,
              bottom: 16,
              child: GestureDetector(
                onTap: () => context.go('/favorites'),

                child: Container(
                  width: 56,
                  height: 56,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.red),
                    color: Colors.transparent,
                  ),
                  child: const Center(
                    child: Icon(Icons.favorite, color: Colors.red),
                  ),
                ),
              ),
            ),
            Positioned(
              right: 16,
              bottom: 16,
              child: GestureDetector(
                onTap: () {},
                child: Container(
                  width: 56,
                  height: 56,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.black),
                    color: Colors.transparent,
                  ),
                  child: const Center(
                    child: Icon(Icons.filter_list, color: Colors.black),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
