// // import 'dart:io';

// // import 'package:cloud_firestore/cloud_firestore.dart';
// // import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:intl/intl.dart';
// import 'package:kids_info/features/edit_child_data/cubit/edit_personal_info_cubit.dart';
// import 'package:kids_info/features/edit_child_data/data/repository/edit_personal_info_repository.dart';

// class EditPersonalInfoPage extends StatelessWidget {
//   EditPersonalInfoPage({required this.id, super.key});

//   final String id;
//   final List<bool> isSelected = [true, false];
//   final TextEditingController nameController = TextEditingController();
//   final TextEditingController birthdayController = TextEditingController();
//   final TextEditingController weightController = TextEditingController();
//   final TextEditingController heightController = TextEditingController();
//   // savePersonalInfo() async {
//   //   String name = nameController.text;
//   //   String bio = birthdayController.text;
//   //   String resp = await EditPersonalInfoCubit.saveData(name: name, bio: bio, file: _image!);
//   // }

//   // final FirebaseFirestore _firestore = FirebaseFirestore.instance;
//   @override
//   Widget build(BuildContext context) {
//     return BlocProvider(
//       create: (context) => EditPersonalInfoCubit(
//         EditPersonalInfoRepository(),
//       ),
//       child: Scaffold(
//         appBar: AppBar(
//           title: const Text("Edit Personal Data"),
//         ),
//         body: SafeArea(
//           child: Padding(
//             padding: const EdgeInsets.all(16.0),
//             child: BlocBuilder<EditPersonalInfoCubit, EditPersonalInfoState>(
//               builder: (context, state) {
//                 return Column(
//                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                   children: [
//                     Stack(
//                       children: [
//                         InkWell(
//                           onTap:
//                               context.read<EditPersonalInfoCubit>().pickImage,
//                           child: CircleAvatar(
//                             backgroundColor: Colors.green,
//                             backgroundImage: state.file == null
//                                 ? null
//                                 : FileImage(state.file!),
//                             radius: 64,
//                           ),
//                         ),
//                         Positioned(
//                           bottom: -10,
//                           left: 80,
//                           child: IconButton(
//                             onPressed: () {},
//                             icon: const Icon(Icons.add_a_photo),
//                           ),
//                         ),
//                       ],
//                     ),
//                     TextFormField(
//                       controller: nameController,
//                       decoration: const InputDecoration(hintText: 'Name'),
//                       keyboardType: TextInputType.text,
//                     ),
//                     TextFormField(
//                       controller: birthdayController,
//                       decoration:
//                           const InputDecoration(hintText: 'Date of birthday'),
//                       onTap: () async {
//                         await showDatePicker(
//                           context: context,
//                           initialDate: DateTime.now(),
//                           firstDate: DateTime(2010),
//                           lastDate: DateTime(2050),
//                         ).then(
//                           (selectedDate) {
//                             if (selectedDate != null) {
//                               birthdayController.text =
//                                   DateFormat('yyyy-MM-dd').format(selectedDate);
//                             }
//                           },
//                         );
//                       },
//                     ),
//                     TextFormField(
//                       controller: weightController,
//                       decoration: const InputDecoration(hintText: 'Weight'),
//                       keyboardType: TextInputType.number,
//                     ),
//                     TextFormField(
//                       controller: heightController,
//                       decoration: const InputDecoration(hintText: 'Height'),
//                       keyboardType: TextInputType.number,
//                     ),
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         ElevatedButton(
//                           style: ElevatedButton.styleFrom(
//                             fixedSize: const Size(150, 40),
//                             shape: const RoundedRectangleBorder(
//                               borderRadius: BorderRadius.horizontal(
//                                 left: Radius.circular(50),
//                               ),
//                             ),
//                           ),
//                           onPressed: () {},
//                           child: const Text('Female'),
//                         ),
//                         ElevatedButton(
//                           style: ElevatedButton.styleFrom(
//                             fixedSize: const Size(150, 40),
//                             shape: const RoundedRectangleBorder(
//                               borderRadius: BorderRadius.horizontal(
//                                 right: Radius.circular(50),
//                               ),
//                             ),
//                           ),
//                           onPressed: () {},
//                           child: const Text('Male'),
//                         ),
//                       ],
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.all(8.0),
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.end,
//                         children: [
//                           BlocBuilder<EditPersonalInfoCubit,
//                               EditPersonalInfoState>(
//                             builder: (context, state) {
//                               return TextButton(
//                                 onPressed: () {
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

//                                   context
//                                       .read<EditPersonalInfoCubit>()
//                                       .updateData(
//                                         id: id,
//                                         name: nameController.text,
//                                         birthday: DateTime.parse(
//                                             birthdayController.text),
//                                         weight:
//                                             double.parse(weightController.text),
//                                         height:
//                                             int.parse(heightController.text),
//                                         // personalInfoId: personalInfoId,
//                                       );
//                                   // .read<EditPersonalInfoCubit>()
//                                   // .saveData(
//                                   //   name: nameController.text,
//                                   //   date: DateTime.tryParse(
//                                   //       birthdayController.text),
//                                   //   file: state.file,
//                                   //   weight:
//                                   //       double.parse(weightController.text),
//                                   //   height:
//                                   //       int.parse(heightController.text),
//                                   // );
//                                 },
//                                 child: const Text("Save"),
//                               );
//                             },
//                           ),
//                           TextButton(
//                             onPressed: () {},
//                             child: const Text('Cancel'),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ],
//                 );
//               },
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
