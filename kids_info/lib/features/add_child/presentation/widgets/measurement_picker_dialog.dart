import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:kids_info/features/add_child/presentation/cubit/measurments_cubit.dart';

import 'measurement_picker.dart';

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
                  MeasurementPicker(
                    items: List.generate(10, (index) => index),
                    onSelectedItemChanged: (index) => context
                        .read<MeasurmentsCubit>()
                        .setTempSelectedValue1(index),
                    selectedItem: state.currentValue1,
                  ),
                  const Text('.'),
                  MeasurementPicker(
                    items: List.generate(100, (index) => index),
                    onSelectedItemChanged: (index) => context
                        .read<MeasurmentsCubit>()
                        .setTempSelectedValue2(index),
                    selectedItem: state.currentValue2,
                  ),
                  const Text('kg'),
                ] else ...[
                  MeasurementPicker(
                    items: List.generate(100, (index) => index),
                    onSelectedItemChanged: (index) => context
                        .read<MeasurmentsCubit>()
                        .setTempSelectedValue2(index),
                    selectedItem: state.currentValue2,
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
}
