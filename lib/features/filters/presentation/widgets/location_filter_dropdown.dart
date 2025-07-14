import 'package:flutter/material.dart';

class LocationFilterDropdown extends StatelessWidget {
  final String? value;
  final ValueChanged<String?> onChanged;

  const LocationFilterDropdown({
    super.key,
    required this.value,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String>(
      value: value,
      isExpanded: true,
      decoration: const InputDecoration(labelText: 'Lokalizacja'),
      items: const [
        DropdownMenuItem(value: null, child: Text('Dowolna')),
        DropdownMenuItem(value: 'Polska', child: Text('Polska')),
        DropdownMenuItem(value: 'Zagraniczne', child: Text('Zagraniczne')),
      ],
      onChanged: onChanged,
    );
  }
}
