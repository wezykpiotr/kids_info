import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kids_info/features/edit_child_data/cubit/pp_cubit.dart';
import 'package:kids_info/features/edit_child_data/data/repository/edit_personal_info_repository.dart';
import 'package:kids_info/util/child_tile.dart';

class PersonalInfo extends StatelessWidget {
  final List tileList = [
    ["Age", Colors.blue, "assets/icons/age.png"],
    ["Height", Colors.red, "assets/icons/height.png"],
    ["Weight", Colors.purple, "assets/icons/weight.png"],
    ["Head size", Colors.brown, "assets/icons/head-size.png"],
  ];

  PersonalInfo({required this.id, super.key});

  final String id;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          PpCubit(EditPersonalInfoRepository())..getItemWithID(id),
      child: BlocBuilder<PpCubit, PpState>(
        builder: (context, state) {
          final item = state.editPersonalInfoModel;
          return GridView.builder(
            itemCount: tileList.length,
            padding: const EdgeInsets.all(12),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 1 / 1.6,
            ),
            itemBuilder: (context, index) {
              switch (index) {
                case 0:
                  return ChildTile(
                    tabName: tileList[index][0],
                    tileColor: tileList[index][1],
                    imageName: tileList[index][2],
                    value: item?.name,
                  );
                case 1:
                  return ChildTile(
                    tabName: tileList[index][0],
                    tileColor: tileList[index][1],
                    imageName: tileList[index][2],
                    value: "${item?.birthday}",
                  );
                case 2:
                  return ChildTile(
                    tabName: tileList[index][0],
                    tileColor: tileList[index][1],
                    imageName: tileList[index][2],
                    value: "${item?.weight} kg",
                  );
                case 3:
                  return ChildTile(
                    tabName: tileList[index][0],
                    tileColor: tileList[index][1],
                    imageName: tileList[index][2],
                    value: "${item?.height} cm",
                  );
                default:
                  // const CircularProgressIndicator();
                  return const CircularProgressIndicator();
              }
            },
          );
        },
      ),
    );
  }
}
