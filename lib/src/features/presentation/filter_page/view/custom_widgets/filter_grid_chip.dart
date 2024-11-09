import 'package:flutter/material.dart';

class FilterChipGrid extends StatelessWidget {
  final List<String> labels;
  final Set<String> selectedLabels;
  final ValueChanged<Set<String>> onSelectionChanged;

  const FilterChipGrid({
    Key? key,
    required this.labels,
    required this.selectedLabels,
    required this.onSelectionChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: EdgeInsets.zero,
      shrinkWrap: true,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        childAspectRatio: 2,
        crossAxisCount: 4, // Número de columnas
        crossAxisSpacing: 8.0,
        mainAxisSpacing: 4.0,
      ),
      itemCount: labels.length,
      itemBuilder: (context, index) {
        final label = labels[index];
        return FilterChip(
          backgroundColor: Colors.transparent,
          shape: StadiumBorder(
            side: BorderSide(
                color: selectedLabels.contains(label)
                    ? Colors.orange
                    : Colors.grey),
          ),
          label: Text(label),
          selected: selectedLabels.contains(label),
          onSelected: (isSelected) {
            if (isSelected) {
              selectedLabels.add(label);
            } else {
              selectedLabels.remove(label);
            }
            onSelectionChanged(selectedLabels);
          },
        );
      },
    );
  }
}
