import 'package:flutter/material.dart';

class SortOrderSelector extends StatelessWidget {
  final bool ascending;
  final ValueChanged<bool> onChanged;

  const SortOrderSelector({
    super.key,
    required this.ascending,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Text('Sortuj po terminie:'),
        const Spacer(),
        DropdownButton<bool>(
          value: ascending,
          items: const [
            DropdownMenuItem(value: true, child: Text('Rosnąco')),
            DropdownMenuItem(value: false, child: Text('Malejąco')),
          ],
          onChanged: (value) {
            if (value != null) onChanged(value);
          },
        ),
      ],
    );
  }
}
