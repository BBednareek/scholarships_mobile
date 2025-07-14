import 'package:flutter/material.dart';

class OrganizerFilterDropdown extends StatelessWidget {
  final String? value;
  final ValueChanged<String?> onChanged;

  const OrganizerFilterDropdown({
    super.key,
    required this.value,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String>(
      value: value,
      isExpanded: true,
      decoration: const InputDecoration(labelText: 'Wydawca'),
      items: const [
        DropdownMenuItem(value: null, child: Text('Dowolny')),
        DropdownMenuItem(value: 'MojeStypendia', child: Text('MojeStypendia')),
        DropdownMenuItem(value: 'Eurodesk', child: Text('Eurodesk')),
      ],
      onChanged: onChanged,
    );
  }
}
