import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:kids_info/app/core/injection_container.dart';
import 'package:kids_info/features/chart/domain/model/chart_model.dart';
import 'package:kids_info/features/chart/presentation/chart_page.dart';
import 'package:kids_info/features/home/presentation/tabs/cubit/details_cubit.dart';
import 'package:kids_info/util/child_tile.dart';

class AnalyticsInfoPage extends StatelessWidget {
  final List tileList = [
    ["Age", Colors.blue, "assets/icons/age.png"],
    ["Height", Colors.red, "assets/icons/height.png"],
    ["Weight", Colors.purple, "assets/icons/weight.png"],
    ["Head size", Colors.brown, "assets/icons/head-size.png"],
  ];

  AnalyticsInfoPage({required this.id, super.key});
  final String id;
  final ChartModel model = ChartModel(0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 10);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<DetailsCubit>()..getItemWithID(id),
      child: BlocBuilder<DetailsCubit, DetailsState>(
        builder: (context, state) {
          final item = state.analyticsModel;
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
                  return InkWell(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ChartPage(
                          chartModel: model,
                        ),

                        //TUTAJ MODEL PRZEKAZAĆ PRZEZ BLOC
                      ),
                    ),
                    child: ChildTile(
                        tabName: tileList[index][0],
                        tileColor: tileList[index][1],
                        imageName: tileList[index][2],
                        value: "${item?.age} years"),
                  );
                case 1:
                  return ChildTile(
                      tabName: tileList[index][0],
                      tileColor: tileList[index][1],
                      imageName: tileList[index][2],
                      value: "${item?.height} cm");
                case 2:
                  return ChildTile(
                      tabName: tileList[index][0],
                      tileColor: tileList[index][1],
                      imageName: tileList[index][2],
                      value: "${item?.weight} kg");
                case 3:
                  return ChildTile(
                      tabName: tileList[index][0],
                      tileColor: tileList[index][1],
                      imageName: tileList[index][2],
                      value: "${item?.headSize} cm");
                default:
                  return const CircularProgressIndicator();
                // return ChildTile(
                //     tabName: tileList[index][0],
                //     tileColor: tileList[index][1],
                //     imageName: tileList[index][2],
                //     value: item?.age.toDouble());
              }

              // Switch(index){
              //   case '0': item.age;
              // }
              // return ChildTile(
              //     tabName: tileList[index][0],
              //     tileColor: tileList[index][1],
              //     imageName: tileList[index][2],
              //     value: calculateThevalue(index));
            },
          );
        },
      ),
    );
  }

  // calculateThevalue(int index, BuildContext context) {
  //   switch (index) {
  //     case 0:
  //       ChildTile(
  //         value: item.age,
  //       );

  //       break;
  //     default:
  //   }
  // }
}
