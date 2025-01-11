import 'package:flutter/cupertino.dart';

class MeasurementPicker extends StatelessWidget {
  final List<int> items;
  final Function(int) onSelectedItemChanged;
  final int selectedItem;

  const MeasurementPicker({
    super.key,
    required this.items,
    required this.onSelectedItemChanged,
    required this.selectedItem,
  });

  @override
  Widget build(BuildContext context) => SizedBox(
        width: 50,
        child: CupertinoPicker(
          itemExtent: 32,
          magnification: 1.2,
          scrollController:
              FixedExtentScrollController(initialItem: selectedItem),
          onSelectedItemChanged: onSelectedItemChanged,
          children: items.map((item) => Text(item.toString())).toList(),
        ),
      );
}
