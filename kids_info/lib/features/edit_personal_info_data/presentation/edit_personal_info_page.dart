import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:kids_info/features/edit_personal_info_data/data/repository/edit_personal_info_repository.dart';
import 'package:kids_info/features/edit_personal_info_data/presentation/cubit/edit_personal_info_cubit.dart';

class EditPersonalInfoPage extends StatelessWidget {
  EditPersonalInfoPage({required this.id, super.key});

  final String id;
  final List<bool> isSelected = [true, false];
  final TextEditingController nameController = TextEditingController();
  final TextEditingController birthdayController = TextEditingController();
  final TextEditingController weightController = TextEditingController();
  final TextEditingController heightController = TextEditingController();

//   @override
//   Widget build(BuildContext context) {
//     return MultiBlocProvider(
//       providers: [
//         BlocProvider(
//           create: (context) =>
//               EditPersonalInfoCubit(EditPersonalInfoRepository())..start(),
//         ),
//         BlocProvider(
//           create: (context) =>
//               EditPersonalInfoCubit(EditPersonalInfoRepository())
//                 ..getItemWithID('3KiYhOP78VJ8rbmbL2sS'),
//         ),
//       ],
//       child: Scaffold(
//         appBar: AppBar(
//           title: const Text("Edit Personal Data"),
//         ),
//         body: SafeArea(
//           child: Padding(
//             padding: const EdgeInsets.all(16.0),
//             child: BlocBuilder<EditPersonalInfoCubit, EditPersonalInfoState>(
//               builder: (context, state) {
//                 final myItem = state.item;
//                 if (myItem != null) {
//                   return Column(
//                     children: [
//                       Text(myItem.id),
//                       Text(myItem.name),
//                       Text(DateFormat('yyyy-MM-dd').format(myItem.birthday)),
//                       Text(myItem.weight.toString()),
//                       Text(myItem.height.toString()),
//                     ],
//                   );
//                 }
//                 return const Text('null');
//               },
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

  // savePersonalInfo() async {
  //   String name = nameController.text;
  //   String bio = birthdayController.text;
  //   String resp = await EditPersonalInfoCubit.saveData(name: name, bio: bio, file: _image!);
  // }

  // final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        // BlocProvider(
        //   create: (context) =>
        //       EditPersonalInfoCubit(EditPersonalInfoRepository())..start(),
        // ),
        BlocProvider(
          create: (context) =>
              EditPersonalInfoCubit(EditPersonalInfoRepository())
                ..getItemWithID(id),
        ),
      ],
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Edit Personal Data"),
        ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: BlocBuilder<EditPersonalInfoCubit, EditPersonalInfoState>(
                builder: (context, state) {
              final myItem = state.item;

              Future.delayed(const Duration(seconds: 2));
              if (myItem != null) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Stack(
                      children: [
                        InkWell(
                          onTap:
                              context.read<EditPersonalInfoCubit>().pickImage,
                          child: CircleAvatar(
                            backgroundColor: Colors.green,
                            backgroundImage: state.file == null
                                ? null
                                : FileImage(state.file!),
                            radius: 64,
                          ),
                        ),
                        Positioned(
                          bottom: -10,
                          left: 80,
                          child: IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.add_a_photo),
                          ),
                        ),
                      ],
                    ),
                    TextFormField(
                      controller: nameController,
                      decoration: const InputDecoration(hintText: 'Name'),
                      keyboardType: TextInputType.text,
                    ),
                    TextFormField(
                      controller: birthdayController,
                      decoration:
                          const InputDecoration(hintText: 'Date of birthday'),
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
                                  DateFormat('yyyy-MM-dd').format(selectedDate);
                            }
                          },
                        );
                      },
                    ),
                    TextFormField(
                      controller: weightController,
                      decoration: const InputDecoration(hintText: 'Weight in grams'),
                      keyboardType: TextInputType.number,
                    ),
                    TextFormField(
                      controller: heightController,
                      decoration: const InputDecoration(hintText: 'Height in centimeters'),
                      keyboardType: TextInputType.number,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            fixedSize: const Size(150, 40),
                            shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.horizontal(
                                left: Radius.circular(50),
                              ),
                            ),
                          ),
                          onPressed: () {},
                          child: const Text('Female'),
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            fixedSize: const Size(150, 40),
                            shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.horizontal(
                                right: Radius.circular(50),
                              ),
                            ),
                          ),
                          onPressed: () {},
                          child: const Text('Male'),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          BlocBuilder<EditPersonalInfoCubit,
                              EditPersonalInfoState>(
                            builder: (context, state) {
                              return TextButton(
                                onPressed: () {
//                                   // final userId =
//                                   //     FirebaseAuth.instance.currentUser?.uid;
//                                   // final doc = FirebaseFirestore.instance
//                                   //     .collection('users')
//                                   //     .doc()
//                                   //     .collection('personal_info')
//                                   //     .id;
//                                   // final personalInfoId = FirebaseFirestore
//                                   //     .instance
//                                   //     .collection('users')
//                                   //     .doc()
//                                   //     .collection('personal_info')
//                                   //     .doc()
//                                   //     .id;

//                                   // DZIAŁĄ, ALE TRZEBA ZROBIĆ TAK, ŻEBY TYLKO RAZ MOŻNA BYŁO DODAĆ,
//                                   // DOPIERO PÓŹNIEJ TRZEBA ROZRÓŻNIĆ, ŻE BĘDZIE WIĘCEJ DZIECI I ŻEBY
//                                   // TEXTFIELD POBIERAŁO DANE Z FIREBASE TEŻ

//TAK DZIAŁA
                                  context
                                      .read<EditPersonalInfoCubit>()
                                      .updateData(
                                        id: myItem.id,
                                        name: nameController.text,
                                        birthday:DateTime.parse(
                                                birthdayController.text),
                                        weight:
                                            int.parse(weightController.text),
                                        height:
                                            int.parse(heightController.text),
                                        // personalInfoId: personalInfoId,
                                      );
                                  // context
                                  //     .read<EditPersonalInfoCubit>()
                                  //     .saveData(
                                  //       name: nameController.text,
                                  //       birthday: DateTime.parse(
                                  //           birthdayController.text),
                                  //       weight:
                                  //           double.parse(weightController.text),
                                  //       height:
                                  //           int.parse(heightController.text),
                                  //     );
                                },
                                child: const Text("Save"),
                              );
                            },
                          ),
                          TextButton(
                            onPressed: () {},
                            child: const Text('Cancel'),
                          ),
                        ],
                      ),
                    ),
                  ],
                );
              }
              return const CircularProgressIndicator();
            }),
          ),
        ),
      ),
    );
  }
}
