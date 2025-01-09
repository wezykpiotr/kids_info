import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:kids_info/features/add_child/presentation/cubit/measurments_cubit.dart';

class CustomAlertDialog extends StatelessWidget {
  final TextEditingController controller;
  final bool weight;

  const CustomAlertDialog({
    super.key,
    required this.controller,
    required this.weight,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MeasurmentsCubit, MeasurmentsState>(
      builder: (context, state) {
        return AlertDialog(
          content: SizedBox(
            height: 200,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                if (weight) ...[
                  _buildPicker(
                    context,
                    List.generate(10, (index) => index),
                    (index) => context
                        .read<MeasurmentsCubit>()
                        .setTempSelectedValue1(index),
                    state.currentValue1,
                  ),
                  const Text('.'),
                  _buildPicker(
                    context,
                    List.generate(100, (index) => index),
                    (index) => context
                        .read<MeasurmentsCubit>()
                        .setTempSelectedValue2(index),
                    state.currentValue2,
                  ),
                  const Text('kg'),
                ] else ...[
                  _buildPicker(
                    context,
                    List.generate(100, (index) => index),
                    (index) => context
                        .read<MeasurmentsCubit>()
                        .setTempSelectedValue2(index),
                    state.currentValue2,
                  ),
                  const Text('cm'),
                ],
              ],
            ),
          ),
          actions: [
            TextButton(
              onPressed: () {
                final formatter = NumberFormat('00');
                if (weight) {
                  controller.text =
                      '${state.currentValue1}.${formatter.format(state.currentValue2)} kg';
                } else {
                  controller.text = '${state.currentValue2} cm';
                }
                Navigator.of(context).pop();
              },
              child: const Text('Accept'),
            ),
          ],
        );
      },
    );
  }

  Widget _buildPicker(
    BuildContext context,
    List<int> items,
    Function(int) onSelectedItemChanged,
    int selectedItem,
  ) {
    return SizedBox(
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
}
