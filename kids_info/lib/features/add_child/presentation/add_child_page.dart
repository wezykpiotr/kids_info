import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:kids_info/features/add_child/presentation/cubit/controller_cubit.dart';
import 'package:kids_info/features/add_child/presentation/cubit/dropdown_button_cubit.dart';
import 'package:kids_info/features/add_child/presentation/cubit/switch_cubit.dart';
import 'package:kids_info/features/add_child/presentation/cubit/weight_cubit.dart';
import 'package:kids_info/features/edit_personal_info_data/data/repository/edit_personal_info_repository.dart';
import 'package:kids_info/features/edit_personal_info_data/presentation/cubit/edit_personal_info_cubit.dart';

class AddChildPage extends StatelessWidget {
  final weightController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController birthdayController = TextEditingController();
  final TextEditingController ageInDaysController = TextEditingController();
  final TextEditingController birthLenghtController = TextEditingController();
  final TextEditingController headSizeController = TextEditingController();

  AddChildPage({super.key});

  @override
  Widget build(BuildContext context) {
    bool twin = false;
    String sex = 'male';
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => DropdownButtonCubit(),
        ),
        BlocProvider(
          create: (context) => ControllerCubit(),
        ),
        BlocProvider(
          create: (context) => SwitchCubit(),
        ),
        BlocProvider(
          create: (context) => WeightCubit(),
        ),
        BlocProvider(
          create: (context) => EditPersonalInfoCubit(
            EditPersonalInfoRepository(),
          ),
        ),
      ],
      child: Builder(builder: (context) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('Add a child'),
          ),
          body: Padding(
            padding: const EdgeInsets.all(16),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                // mainAxisSize: MainAxisSize.min,
                children: [
                  TextFormField(
                    controller: nameController,
                    decoration: const InputDecoration(
                      hintText: 'Child',
                      border: InputBorder.none,
                    ),
                    style: TextStyle(color: Colors.grey[800], fontSize: 32),
                    enabled: false,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    child: TextFormField(
                      controller: ageInDaysController,
                      decoration: const InputDecoration(
                        hintText: 'Age',
                        border: InputBorder.none,
                      ),
                      style: TextStyle(color: Colors.grey[800], fontSize: 32),
                      enabled: false,
                    ),
                  ),
                  const SizedBox(
                    height: 32,
                  ),
                  const Text('More information'),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 32),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            const Image(
                              width: 32,
                              height: 32,
                              image: AssetImage("assets/icons/user.png"),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            const Text("Name:"),
                            const Spacer(),
                            SizedBox(
                              width: 200,
                              child:
                                  BlocBuilder<ControllerCubit, ControllerState>(
                                builder: (context, state) {
                                  return TextFormField(
                                    onChanged: (newValue) => context
                                        .read<ControllerCubit>()
                                        .getControllerText(newValue),
                                    controller: nameController,
                                    decoration: const InputDecoration(
                                      hintText: 'Enter a name...',
                                      border: InputBorder.none,
                                    ),
                                    keyboardType: TextInputType.text,
                                  );
                                },
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const Image(
                              width: 32,
                              height: 32,
                              image: AssetImage("assets/icons/sex.png"),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            const Text("Sex:"),
                            const Spacer(),
                            SizedBox(
                              width: 200,

                              //*DZIAŁA

                              child: BlocBuilder<DropdownButtonCubit,
                                  DropdownButtonState>(
                                builder: (context, state) {
                                  return DropdownButton(
                                    onChanged: (dynamic value) => context
                                        .read<DropdownButtonCubit>()
                                        .passValue(value),
                                    value: sex = state.currentValue,
                                    items: state.sex.map((item) {
                                      return DropdownMenuItem(
                                        value: item,
                                        child: Text(item),
                                      );
                                    }).toList(),
                                  );
                                },
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const Image(
                              width: 32,
                              height: 32,
                              image: AssetImage("assets/icons/twins.png"),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            const Text("Twin?:"),
                            // const Spacer(),
                            BlocBuilder<SwitchCubit, SwitchState>(
                              builder: (context, state) {
                                return Switch(
                                  value: twin = state.currentValue,
                                  onChanged: (value) => context
                                      .read<SwitchCubit>()
                                      .getSwitchValue(value),
                                  activeColor: Colors.green,
                                );
                              },
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const Image(
                              width: 32,
                              height: 32,
                              image:
                                  AssetImage("assets/icons/happy-birthday.png"),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            const Text("Date of birth:"),
                            const Spacer(),
                            SizedBox(
                              width: 200,
                              child: TextFormField(
                                controller: birthdayController,
                                decoration: const InputDecoration(
                                  hintText: 'Enter a date of birth',
                                  border: InputBorder.none,
                                ),
                                keyboardType: TextInputType.text,
                                onTap: () async {
                                  await showDatePicker(
                                    context: context,
                                    initialDate: DateTime.now(),
                                    firstDate: DateTime(2010),
                                    lastDate: DateTime(2050),
                                  ).then(
                                    (selectedDate) {
                                      if (selectedDate != null) {
                                        birthdayController.text =
                                            DateFormat('yyyy-MM-dd')
                                                .format(selectedDate);
                                        ageInDaysController.text =
                                            countDays(selectedDate);
                                      }
                                    },
                                  );
                                },
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const Text("Measurments"),
                  Column(
                    children: [
                      Row(
                        children: [
                          const Image(
                            width: 32,
                            height: 32,
                            image: AssetImage("assets/icons/weight.png"),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          const Text("Birth weight:"),
                          const Spacer(),

                          // * TUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUTAJ
                          // * TUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUTAJ
                          // * TUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUTAJ
                          // * TUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUTAJ
                          // * TUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUTAJ
                          SizedBox(
                            width: 200,
                            child: TextFormField(
                              controller: weightController,
                              decoration: const InputDecoration(
                                hintText: 'Enter a weight',
                                border: InputBorder.none,
                              ),
                              keyboardType: TextInputType.text,
                              onTap: () =>
                                  _showDialog(context, weightController, true),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          const Image(
                            width: 32,
                            height: 32,
                            image: AssetImage("assets/icons/height.png"),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          const Text("Birth lenght:"),
                          const Spacer(),
                          SizedBox(
                            width: 200,
                            child: TextFormField(
                              controller: birthLenghtController,
                              decoration: const InputDecoration(
                                hintText: 'Enter a lenght',
                                border: InputBorder.none,
                              ),
                              keyboardType: TextInputType.text,
                              onTap: () => _showDialog(
                                  context, birthLenghtController, false),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          const Image(
                            width: 32,
                            height: 32,
                            image: AssetImage("assets/icons/head-size.png"),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          const Text("Head size:"),
                          const Spacer(),
                          SizedBox(
                            width: 200,
                            child: TextFormField(
                              controller: headSizeController,
                              decoration: const InputDecoration(
                                hintText: 'Enter a head size',
                                border: InputBorder.none,
                              ),
                              keyboardType: TextInputType.text,
                              onTap: () => _showDialog(
                                  context, headSizeController, false),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  //* TUTAJ DODAĆ BLOCA Z PERSONAL INFO I UŻYCIE SAVEDATA

                  BlocBuilder<ControllerCubit, ControllerState>(
                    builder: (context, state) {
                      return BlocBuilder<EditPersonalInfoCubit,
                          EditPersonalInfoState>(
                        builder: (context, state) {
                          return ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              minimumSize: const Size.fromHeight(50),
                            ),

                            // state.currentText.isEmpty()
                            //     ? null
                            //     : () {
                            //         print(state.currentText);
                            //       },
                            onPressed: () {
                              context.read<EditPersonalInfoCubit>().saveData(
                                  name: nameController.text,
                                  birthday:
                                      DateTime.parse(birthdayController.text),
                                  weight: weightController.text,
                                  height: int.parse(birthLenghtController.text),
                                  headSize: int.parse(headSizeController.text),
                                  twin: twin,
                                  sex: sex);
                              Navigator.of(context).pop();
                            },
                            child: const Text('Add a child'),
                          );
                        },
                      );
                    },
                  ),
                  // Text(weightController.text.toString()),
                  // Text(birthLenghtController.text.toString()),
                  // Text(headSizeController.text.toString())
                ],
              ),
            ),
          ),
        );
      }),
    );
  }
}

String countDays(DateTime selectedDate) {
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

void _showDialog(
    BuildContext context, TextEditingController controller, bool weight) async {
  await showDialog(
    context: context,
    builder: (context) => BlocProvider(
      create: (context) => WeightCubit(),
      child: CustomAlertDialog(
        controller: controller,
        weight: weight,
      ),
    ),
  );
}

class CustomAlertDialog extends StatelessWidget {
  const CustomAlertDialog(
      {Key? key, required this.controller, required this.weight})
      : super(key: key);

  final TextEditingController controller;
  final bool weight;
  @override
  Widget build(BuildContext context) {
    int tempSelectedValue1 = 0;
    int tempSelectedValue2 = 0;
    NumberFormat formatter = NumberFormat("00");

    return BlocBuilder<WeightCubit, WeightState>(
      builder: (context, state) {
        //* TEN STATE DZIAŁA JAK WYWOŁAMY CONTEXT.READ<WEIGHTCUBIT>().
        //*  ALE NIE DZIAŁA JAK ZROBIMY COPYWITH, ZNOWU JAK NIE ZROBIMY COPYWITH, TO NIE AKTUALIZUJE SIĘ STATE
        //* MOŻNA SPRÓBOWAĆ TERAZ USTAWIĆ TE WARTOŚĆI NA CUPERTINO...
        print(state.currentValueKg);
        print(state.currentValueGrams);
        return AlertDialog(
          content: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (weight)
                SizedBox(
                  width: 100,
                  height: 112,
                  child: CupertinoPicker(
                    itemExtent: 32,
                    onSelectedItemChanged: (index) {
                      tempSelectedValue1 = index;
                    },
                    children: List<Widget>.generate(
                      10,
                      (index) => Text('$index'),
                    ),
                  ),
                ),
              SizedBox(
                width: 100,
                height: 112,
                child: CupertinoPicker(
                  itemExtent: 32,
                  onSelectedItemChanged: (index) {
                    tempSelectedValue2 = index;
                  },
                  children: List<Widget>.generate(
                    100,
                    (index) => Text(formatter.format(index)),
                  ),
                ),
              ),
            ],
          ),
          actions: [
            ElevatedButton(
              onPressed: () {
                //*TU SIĘ STATE AKTUALIZUJE, DOPIERO WTEDY GDY KLIKNIEMY PRZYCISK, INACZEJ WEIGHTCONTROLLER.TEXT NIE ZDĄŻY ZAKTUALIZOWAĆ STATE
                context
                    .read<WeightCubit>()
                    .getControllerValue(tempSelectedValue1, tempSelectedValue2);

                // weightController.text =
                //     '${state.currentValueKg}, ${state.currentValueGrams}';

                //*TO NATYCHMIAST AKTUALIZUJE STATE DLATEGO MOŻNA USTAWIĆ WEIGHTCONTROLLER.TEXT I WYŚWIETLIĆ W NIM WARTOŚCI,
                //* COPYWITH JEDNAK NIE ZMIENIA STATE JAK CHCĘ MIEĆ DO NIEGO DOSTĘP WYŻEJ, DLATEGO TRZEBA TAM WYKORZYSTAĆ CONTEXT.READ

                var newValues = state.copyWith(
                  currentValueGrams: tempSelectedValue2,
                  currentValueKg: tempSelectedValue1,
                );
                if (weight) {
                  controller.text =
                      '${newValues.currentValueKg}, ${newValues.currentValueGrams}';
                } else {
                  controller.text = '${newValues.currentValueGrams}';
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
