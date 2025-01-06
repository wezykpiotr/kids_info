import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:kids_info/features/add_child/presentation/cubit/controller_cubit.dart';
import 'package:kids_info/features/add_child/presentation/cubit/dropdown_button_cubit.dart';
import 'package:kids_info/features/add_child/presentation/cubit/measurments_cubit.dart';
import 'package:kids_info/features/add_child/presentation/cubit/switch_cubit.dart';
import 'package:kids_info/features/add_child/presentation/widgets/child_form.dart';
import 'package:kids_info/features/add_child/presentation/widgets/measurement_picker_dialog.dart';
import 'package:kids_info/features/edit_analytics_info_data/data/analytics_repository.dart';
import 'package:kids_info/features/edit_personal_info_data/data/repository/edit_personal_info_repository.dart';
import 'package:kids_info/features/edit_personal_info_data/presentation/cubit/edit_personal_info_cubit.dart';


class AddChildPage extends StatelessWidget {
  AddChildPage({super.key});

  final weightController = TextEditingController();
  final nameController = TextEditingController();
  final birthdayController = TextEditingController();
  final ageInDaysController = TextEditingController();
  final birthLenghtController = TextEditingController();
  final headSizeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => DropdownButtonCubit()),
        BlocProvider(create: (context) => ControllerCubit()),
        BlocProvider(create: (context) => SwitchCubit()),
        BlocProvider(
          create: (context) => EditPersonalInfoCubit(
            EditPersonalInfoRepository(),
            AnalyticsRepository(),
          ),
        ),
      ],
      child: Builder(
        builder: (context) {
          return BlocBuilder<DropdownButtonCubit, DropdownButtonState>(
            builder: (context, dropdownState) {
              return BlocBuilder<SwitchCubit, SwitchState>(
                builder: (context, switchState) {
                  return Scaffold(
                    appBar: AppBar(title: const Text('Add a child')),
                    body: ChildForm(
                      weightController: weightController,
                      nameController: nameController,
                      birthdayController: birthdayController,
                      ageInDaysController: ageInDaysController,
                      birthLenghtController: birthLenghtController,
                      headSizeController: headSizeController,
                      selectedSex: dropdownState.currentValue,
                      isTwin: switchState.currentValue,
                      onNameChanged: (value) => context
                          .read<ControllerCubit>()
                          .updateControllerText(value),
                      onSexChanged: (value) => context
                          .read<DropdownButtonCubit>()
                          .updateDropdownValue(value),
                      onTwinChanged: (value) => context
                          .read<SwitchCubit>()
                          .updateSwitchValue(value),
                      onDateSelected: (date) => _handleDateSelection(date),
                      onSave: () => _handleSave(context),
                      onMeasurementTap: _showMeasurementDialog,
                    ),
                  );
                },
              );
            },
          );
        },
      ),
    );
  }

  void _handleDateSelection(DateTime? date) {
    if (date != null) {
      birthdayController.text = DateFormat('yyyy-MM-dd').format(date);
      ageInDaysController.text = _countDays(date);
    }
  }

  String _countDays(DateTime selectedDate) {
    String result = '';
    int days = DateTime.now().difference(selectedDate).inDays;
    if (days > 365) {
      result = '${(days / 365).floor().toString()} Year(s)';
    } else if (days > 30) {
      result = '${(days / 30).floor().toString()} Month(s)';
    } else if (days > 7) {
      result = '${(days / 7).floor().toString()} Week(s)';
    } else if (days > 1) {
      result = '${(days / 1).floor().toString()} Day(s)';
    }
    return result;
  }

  void _handleSave(BuildContext context) {
    try {
      context.read<EditPersonalInfoCubit>().saveData(
            name: nameController.text,
            birthday: DateTime.parse(birthdayController.text),
            weight: weightController.text,
            height: int.parse(birthLenghtController.text),
            headSize: int.parse(headSizeController.text),
            twin: context.read<SwitchCubit>().state.currentValue,
            sex: context.read<DropdownButtonCubit>().state.currentValue,
          );
      Navigator.of(context).pop();
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Error: ${e.toString()}')),
      );
    }
  }

    void _showMeasurementDialog(
    BuildContext context,
    TextEditingController controller,
    bool isWeight,
  ) {
    int value1 = 0;
    int value2 = 0;
    
    if (controller.text.isNotEmpty) {
      if (isWeight) {
        final parts = controller.text.split('.');
        value1 = int.tryParse(parts[0]) ?? 0;
        value2 = parts.length > 1 ? (int.tryParse(parts[1]) ?? 0) : 0;
      } else {
        value2 = int.tryParse(controller.text) ?? 0;
      }
    }

    showDialog(
      context: context,
      builder: (context) => BlocProvider(
        create: (context) => MeasurmentsCubit()
          ..setTempSelectedValue1(value1)
          ..setTempSelectedValue2(value2),
        child: CustomAlertDialog(
          controller: controller,
          weight: isWeight,
        ),
      ),
    );
  }
}