// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:kids_info/features/home/domain/repository/analytics_repository.dart';
// import 'package:kids_info/features/home/presentation/tabs/cubit/cubit/details_cubit.dart';
// import 'package:kids_info/features/home/presentation/tabs/cubit/cubit/details_state.dart';
// import 'package:kids_info/util/child_tile.dart';

// class Appointments extends StatelessWidget {
//   final List tileList = [
//     ["Age", Colors.blue, "assets/icons/age.png"],
//     ["Height", Colors.red, "assets/icons/height.png"],
//     ["Weight", Colors.purple, "assets/icons/weight.png"],
//     ["Head size", Colors.brown, "assets/icons/head-size.png"],
//   ];

//   Appointments({required this.id, super.key});

//   final String id;
//   @override
//   Widget build(BuildContext context) {
//     return BlocProvider(
//       create: (context) =>
//           DetailsCubit(AnalyticsRepository())..getItemWithID(id),
//       child: BlocBuilder<DetailsCubit, DetailsState>(
//         builder: (context, state) {
//           final item = state.analyticModel;
//           return GridView.builder(
//             itemCount: tileList.length,
//             padding: const EdgeInsets.all(12),
//             gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//               crossAxisCount: 2,
//               childAspectRatio: 1 / 1.6,
//             ),
//             itemBuilder: (context, index) {
//               return ChildTile(
//                 tabName: tileList[index][0],
//                 tileColor: tileList[index][1],
//                 imageName: tileList[index][2],
//                 value: item?.age,
//               );
//             },
//           );
//         },
//       ),
//     );
//   }
// }
