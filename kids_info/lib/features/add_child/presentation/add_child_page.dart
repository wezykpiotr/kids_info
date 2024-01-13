import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:kids_info/features/add_child/presentation/cubit/controller_cubit.dart';
import 'package:kids_info/features/add_child/presentation/cubit/dropdown_button_cubit.dart';
import 'package:kids_info/features/add_child/presentation/cubit/switch_cubit.dart';
import 'package:kids_info/features/add_child/presentation/cubit/measurments_cubit.dart';
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
        // BlocProvider(
        //   create: (context) => EditPersonalInfoCubit(
        //     EditPersonalInfoRepository(),
        //   ),
        // ),
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
                                        .updateControllerText(newValue),
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
                                        .updateDropdownValue(value),
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
                                      .updateSwitchValue(value),
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
                          SizedBox(
                            width: 200,
                            child: TextFormField(
                              controller: weightController,
                              decoration: const InputDecoration(
                                hintText: 'Enter a weight',
                                border: InputBorder.none,
                              ),
                              keyboardType: TextInputType.text,
                              onTap: () => _showDialog(
                                context,
                                weightController,
                                true,
                              ),
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
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size.fromHeight(50),
                    ),
                    onPressed: () async {
                      context.read<EditPersonalInfoCubit>().saveData(
                            name: nameController.text,
                            birthday: DateTime.parse(birthdayController.text),
                            weight: weightController.text,
                            height: int.parse(birthLenghtController.text),
                            headSize: int.parse(headSizeController.text),
                            twin: twin,
                            sex: sex,
                          );
                      //*TAK TERAZ DZIAŁA, TYLKO TRZEBA WSZYSTKIE STATE EMITOWAĆ, BO WCHODZI W INITIAL, CZYLI TYLKO ADDED JEST NA TRUE,
                      //* A RESZTA RESETUJE STATE DO DEFAULT VALUE
                      //* TEGO JUŻ NIE POTRZEBA
                      //* TERAZ DOBRZE BY BYŁO ABY DODAC, ŻE PRZY USUNIĘCIU NA DOLE W SNACKBARZE WYŚWIETLANE JEST TEN IMIĘ USUNIĘTE LUB DODANEGO DZIECKA
                      // context.read<EditPersonalInfoCubit>().addedFlag();
                      // print(context
                      //     .read<EditPersonalInfoCubit>()
                      //     .addedFlag().toString());
                      Navigator.of(context).pop();
                    },
                    child: const Text('Add a child'),
                  ),
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
      create: (context) => MeasurmentsCubit(),
      child: CustomAlertDialog(
        controller: controller,
        weight: weight,
      ),
    ),
  );
}

class CustomAlertDialog extends StatelessWidget {
  CustomAlertDialog({
    Key? key,
    required this.controller,
    required this.weight,
  }) : super(key: key);

  final TextEditingController controller;
  final bool weight;
  int tempSelectedValue1 = 0;
  int tempSelectedValue2 = 0;
  final NumberFormat formatter = NumberFormat("00");

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MeasurmentsCubit, MeasurmentsState>(
      builder: (context, weightState) {
        //* TEN STATE DZIAŁA JAK WYWOŁAMY CONTEXT.READ<WEIGHTCUBIT>().
        //*  ALE NIE DZIAŁA JAK ZROBIMY COPYWITH, ZNOWU JAK NIE ZROBIMY COPYWITH, TO NIE AKTUALIZUJE SIĘ STATE
        //* MOŻNA SPRÓBOWAĆ TERAZ USTAWIĆ TE WARTOŚĆI NA CUPERTINO...
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
                context
                    .read<MeasurmentsCubit>()
                    .updateValues(tempSelectedValue1, tempSelectedValue2);
                var newValues = weightState.copyWith(
                  currentValue1: tempSelectedValue1,
                  currentValue2: tempSelectedValue2,
                );
                if (weight) {
                  controller.text =
                      '${newValues.currentValue1}${'${formatter.format(newValues.currentValue2)}0'}';
                } else {
                  controller.text = '${newValues.currentValue2}';
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
