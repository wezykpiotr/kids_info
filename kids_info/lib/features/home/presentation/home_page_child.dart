import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kids_info/app/core/enums.dart';
import 'package:kids_info/app/core/injection_container.dart';
import 'package:kids_info/features/add_child/presentation/add_child_page.dart';
import 'package:kids_info/features/auth/user_profile.dart';
import 'package:kids_info/features/edit_personal_info_data/presentation/cubit/edit_personal_info_cubit.dart';
import 'package:kids_info/features/edit_personal_info_data/presentation/edit_personal_info_page.dart';
import 'package:kids_info/features/home/presentation/tabs/cubit/analytics_cubit.dart';
import 'package:kids_info/features/home/presentation/tabs/cubit/drop_down_button_name_cubit.dart';
import 'package:kids_info/features/home/presentation/tabs/cubit/tab_index_cubit.dart';
import 'package:kids_info/features/home/presentation/tabs/personal_info_page.dart';
import 'package:kids_info/util/my_drawer.dart';
import 'package:kids_info/util/my_tab.dart';

class HomePageChild extends StatelessWidget {
  HomePageChild({super.key});

  final List<Widget> myTabs = [
    const MyTab(
      iconPath: 'assets/icons/personal-info.png',
    ),
    const MyTab(
      iconPath: 'assets/icons/analytics.png',
    ),
    const MyTab(
      iconPath: 'assets/icons/documents.png',
    ),
    const MyTab(
      iconPath: 'assets/icons/appointment.png',
    ),
  ];

  FloatingActionButton _buildFloatingActionButton(
      BuildContext context, TabIndexState state) {
    if (state.index == 0) {
      return FloatingActionButton(
        backgroundColor: Colors.grey[800],
        onPressed: () => Navigator.of(context).push(
          MaterialPageRoute(
            builder: (_) => BlocProvider.value(
              value: BlocProvider.of<EditPersonalInfoCubit>(context),
              child: AddChildPage(),
            ),
          ),
        ),
        child: const Icon(Icons.add),
      );
    } else if (state.index == 1) {
      return FloatingActionButton(
        backgroundColor: Colors.grey[800],
        onPressed: () => {},
        child: const Icon(Icons.add_chart_rounded),
      );
    } else if (state.index == 2) {
      return FloatingActionButton(
        backgroundColor: Colors.grey[800],
        onPressed: () => {},
        child: const Icon(
          Icons.add_alert,
        ),
      );
    } else if (state.index == 3) {
      return FloatingActionButton(
        backgroundColor: Colors.grey[800],
        onPressed: () => {},
        child: const Icon(Icons.add_a_photo),
      );
    } else {
      return FloatingActionButton(
        backgroundColor: Colors.grey[800],
        onPressed: () => {},
        child: const Icon(Icons.refresh),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<AnalyticsCubit>()..start(),
        ),
        BlocProvider(
          create: (context) => getIt<EditPersonalInfoCubit>()..start(),
        ),
        BlocProvider(
          create: (context) => DropDownButtonNameCubit(),
        ),
      ],
      child: BlocListener<EditPersonalInfoCubit, EditPersonalInfoState>(
        listener: (context, state) {
          if (state.deleted) {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text('You have deleted child information'),
                backgroundColor: Colors.red,
              ),
            );
          }
          if (state.added) {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text('A child has been added'),
                backgroundColor: Colors.green,
              ),
            );
          }
        },
        child: Scaffold(
          body: BlocBuilder<DropDownButtonNameCubit, DropDownButtonNameState>(
            builder: (context, dropDownState) {
              final int index = dropDownState.index;
              final selectedValue = dropDownState.currentId;
              return BlocBuilder<AnalyticsCubit, AnalyticsState>(
                builder: (context, analyticsState) {
                  // switch (analyticsState.status) {
                  // case Status.initial:
                  //   return const Center(
                  //     child: Text('Initial'),
                  //   );
                  // case Status.loading:
                  //   return const Center(
                  //     child: CircularProgressIndicator(),
                  //   );

                  // case Status.error:
                  //   return Center(
                  //     child: Column(
                  //       mainAxisAlignment: MainAxisAlignment.center,
                  //       children: [
                  //         Text(analyticsState.errorMessage ?? "Unkown error"),
                  //       ],
                  //     ),
                  //   );
                  // case Status.success:
                  //   if (analyticsState.items.isEmpty) {
                  //     return Scaffold(
                  //       body: const Center(
                  //         child: Text("No data, add a child"),
                  //       ),
                  //       floatingActionButton: FloatingActionButton(
                  //           backgroundColor: Colors.grey[800],
                  //           onPressed: () => Navigator.of(context).push(
                  //                 MaterialPageRoute(
                  //                   builder: (context) => AddChildPage(),
                  //                 ),
                  //               ),
                  //           child: const Icon(Icons.add)),
                  //     );
                  //   }
                  final analyticsItems = analyticsState.items;
                  return BlocBuilder<EditPersonalInfoCubit,
                      EditPersonalInfoState>(
                    builder: (context, personalState) {
                      switch (personalState.status) {
                        case Status.initial:
                          return const Center(
                            child: Text('Initial'),
                          );
                        case Status.loading:
                          return const Center(
                            child: CircularProgressIndicator(),
                          );

                        case Status.error:
                          return Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(personalState.errorMessage ??
                                    "Unkown error"),
                              ],
                            ),
                          );
                        case Status.success:
                          if (personalState.items.isEmpty) {
                            return Scaffold(
                              body: const Center(
                                child: Text("No data, add a child"),
                              ),
                              floatingActionButton: FloatingActionButton(
                                  backgroundColor: Colors.grey[800],
                                  onPressed: () => Navigator.of(context).push(
                                        MaterialPageRoute(
                                          builder: (context) => AddChildPage(),
                                        ),
                                      ),
                                  child: const Icon(Icons.add)),
                            );
                          }
                          final personalInfo = personalState.items;

                          return BlocProvider(
                            create: (context) => TabIndexCubit(),
                            child: BlocBuilder<TabIndexCubit, TabIndexState>(
                              builder: (context1, tabState) {
                                return DefaultTabController(
                                  length: myTabs.length,
                                  child: Builder(builder: (context) {
                                    final tabController =
                                        DefaultTabController.of(context);

                                    tabController.animation!.addListener(() {
                                      !tabController.indexIsChanging
                                          ? context
                                              .read<TabIndexCubit>()
                                              .updateIndex(tabController.index)
                                          : context
                                              .read<TabIndexCubit>()
                                              .updateIndex(tabController.index);
                                    });
                                    return Scaffold(
                                      appBar: AppBar(
                                        backgroundColor: Colors.transparent,
                                        iconTheme: IconThemeData(
                                            color: Colors.grey[800]),
                                        elevation: 0,
                                        title: Row(
                                          children: [
                                            DropdownButton(
                                              hint:
                                                  const Text('Select a child'),
                                              onChanged: (value) {
                                                if (value == null) return;
                                                final index = personalInfo
                                                    .indexWhere((element) =>
                                                        element.id == value);
                                                context
                                                    .read<
                                                        DropDownButtonNameCubit>()
                                                    .updateCurrentIdAndIndex(
                                                      value.toString(),
                                                      index,
                                                    );
                                              },
                                              items: personalInfo
                                                  .map(
                                                    (element) =>
                                                        DropdownMenuItem(
                                                      value: element.id,
                                                      child: SizedBox(
                                                        width: 150,
                                                        child: Dismissible(
                                                          key: Key(element.id),
                                                          direction:
                                                              DismissDirection
                                                                  .endToStart,
                                                          onDismissed:
                                                              (direction) {
                                                            context
                                                                .read<
                                                                    EditPersonalInfoCubit>()
                                                                .removeBabyData(
                                                                    element.id);

                                                            context
                                                                .read<
                                                                    DropDownButtonNameCubit>()
                                                                .updateCurrentIdAndIndex(
                                                                    null, 0);

                                                            Navigator.of(
                                                                    context)
                                                                .pop();
                                                          },
                                                          child: ListTile(
                                                            title: Text(
                                                                element.name),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  )
                                                  .toList(),
                                              value: selectedValue ??
                                                  personalInfo[index].id,
                                            ),
                                          ],
                                        ),
                                        actions: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                right: 24.0),
                                            child: IconButton(
                                              icon: Icon(
                                                Icons.person,
                                                color: Colors.grey[800],
                                                size: 36,
                                              ),
                                              onPressed: () {
                                                Navigator.of(context).push(
                                                  MaterialPageRoute(
                                                    builder: (context) =>
                                                        const UserProfileScreen(),
                                                  ),
                                                );
                                              },
                                            ),
                                          )
                                        ],
                                      ),
                                      drawer: MyDrawer(
                                        onAnalyticsInfoTap: () {
                                          Navigator.of(context).pop();
                                          Navigator.of(context).push(
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  EditPersonalInfoPage(
                                                      id: personalState
                                                          .items[0].id),
                                            ),
                                          );
                                        },
                                        onAppointmentsTap: () {
                                          Navigator.of(context).pop();
                                          Navigator.of(context).push(
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  EditPersonalInfoPage(
                                                      id: personalState
                                                          .items[0].id),
                                            ),
                                          );
                                        },
                                        onDocumentsTap: () {
                                          Navigator.of(context).pop();
                                          Navigator.of(context).push(
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  EditPersonalInfoPage(
                                                      id: personalState
                                                          .items[0].id),
                                            ),
                                          );
                                        },
                                        onPersonalInfoTap: () {
                                          Navigator.of(context).pop();
                                          Navigator.of(context).push(
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  EditPersonalInfoPage(
                                                      id: personalState
                                                          .items[0].id),
                                            ),
                                          );
                                        },
                                      ),
                                      body: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          const Padding(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 36.0, vertical: 18),
                                          ),
                                          TabBar(
                                            tabs: myTabs,
                                          ),
                                          Expanded(
                                            child: TabBarView(
                                              children: [
                                                if (personalInfo.isNotEmpty)
                                                  PersonalInfo(
                                                      id: personalInfo[index]
                                                          .id),
                                                if (personalInfo.isNotEmpty)
                                                  PersonalInfo(
                                                      id: personalInfo[index]
                                                          .id),
                                                // if (analyticsItems.isNotEmpty)
                                                //   AnalyticsInfoPage(
                                                //       id: analyticsItems[index].id),
                                                if (personalInfo.isNotEmpty)
                                                  PersonalInfo(
                                                      id: personalInfo[index]
                                                          .id),
                                                if (personalInfo.isNotEmpty)
                                                  PersonalInfo(
                                                      id: personalInfo[index]
                                                          .id),
                                                if (personalInfo.isEmpty)
                                                  const Text('no'),
                                                if (personalInfo.isEmpty)
                                                  const Text('no'),
                                                if (personalInfo.isEmpty)
                                                  const Text('no'),
                                                if (personalInfo.isEmpty)
                                                  const Text('no'),
                                              ],
                                              // Text(tabBarviewM(analyticsItems).length.toString()),
                                            ),
                                          ),
                                        ],
                                      ),
                                      floatingActionButton:
                                          _buildFloatingActionButton(
                                              context1, tabState),
                                    );
                                  }),
                                );
                              },
                            ),
                          );
                      }
                    },
                  );
                },
              );
            },
          ),
        ),
      ),
    );
  }
}
