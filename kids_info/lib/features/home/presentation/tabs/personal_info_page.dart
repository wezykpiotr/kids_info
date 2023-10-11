import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:kids_info/app/core/injection_container.dart';
import 'package:kids_info/features/edit_personal_info_data/domain/edit_personal_info_model.dart';
import 'package:kids_info/features/edit_personal_info_data/presentation/cubit/edit_personal_info_cubit.dart';

import 'package:kids_info/util/child_tile.dart';

class PersonalInfo extends StatelessWidget{
  PersonalInfo({required this.id, super.key});
  final List tileList = [
    ["Name", Colors.blue, "assets/icons/user.png"],
    ["Height", Colors.red, "assets/icons/height.png"],
    ["Weight", Colors.purple, "assets/icons/weight.png"],
    ["Birthday", Colors.brown, "assets/icons/happy-birthday.png"],
  ];

  final String id;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<EditPersonalInfoCubit, EditPersonalInfoState>(
      builder: (context, state) {
        final items = state.items;
        final element = items.where((element) => element.id == id);
        final item = element.first;
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
                  value: item.name,
                );
              case 1:
                return ChildTile(
                  tabName: tileList[index][0],
                  tileColor: tileList[index][1],
                  imageName: tileList[index][2],
                  value: "${item.height} cm",
                );
              case 2:
                return ChildTile(
                  tabName: tileList[index][0],
                  tileColor: tileList[index][1],
                  imageName: tileList[index][2],
                  value: "${item.weight} g",
                );
              case 3:
                return ChildTile(
                    tabName: tileList[index][0],
                    tileColor: tileList[index][1],
                    imageName: tileList[index][2],
                    value: dateFormatted(item.birthday));
              default:
                // const CircularProgressIndicator();
                return const CircularProgressIndicator();
            }
          },
        );
      },
    );
  }

  String? dateFormatted(DateTime? birthday) {
    if (birthday != null) {
      return DateFormat('yyyy-MM-dd').format(birthday);
    }
    return '';
  }
}


// value: DateFormat.yMMMEd()
                //       .format(DateTime.parse("${item?.birthday}")) ,
                // );
                // DateFormat('yyyy-MM-dd')
                //     .format(DateTime.parse("${item?.birthday}")));

