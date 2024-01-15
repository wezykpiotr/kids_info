import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kids_info/app/core/enums.dart';
import 'package:kids_info/app/core/injection_container.dart';
import 'package:kids_info/features/add_child/presentation/add_child_page.dart';
import 'package:kids_info/features/auth/user_profile.dart';
import 'package:kids_info/features/edit_personal_info_data/presentation/cubit/edit_personal_info_cubit.dart';
import 'package:kids_info/features/edit_personal_info_data/presentation/edit_personal_info_page.dart';
import 'package:kids_info/features/home/presentation/tabs/analytics_info_page.dart';
import 'package:kids_info/features/home/presentation/tabs/cubit/analytics_cubit.dart';
import 'package:kids_info/features/home/presentation/tabs/cubit/drop_down_button_name_cubit.dart';
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

  // String? selectedValue;
  // late int index;

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
        BlocProvider(create: (context) => DropDownButtonNameCubit()),
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
              final index = dropDownState.index;
              final selectedValue = dropDownState.currentId;
              return BlocBuilder<EditPersonalInfoCubit, EditPersonalInfoState>(
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
                            Text(personalState.errorMessage ?? "Unkown error"),
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
                      return DefaultTabController(
                        length: myTabs.length,
                        child: Scaffold(
                          appBar: AppBar(
                            backgroundColor: Colors.transparent,
                            iconTheme: IconThemeData(color: Colors.grey[800]),
                            elevation: 0,
                            title: Row(
                              children: [
                                DropdownButton(
                                  hint: const Text('Select a child'),
                                  onChanged: (value) {
                                    if (value == null) return;
                                    final index = personalInfo.indexWhere(
                                        (element) => element.id == value);
                                    context
                                        .read<DropDownButtonNameCubit>()
                                        .getCurrentIdAndIndex(
                                          value.toString(),
                                          index,
                                        );
                                  },
                                  items: personalInfo
                                      .map(
                                        (element) => DropdownMenuItem(
                                          value: element.id,
                                          child: SizedBox(
                                            width: 150,
                                            child: Dismissible(
                                              key: Key(element.id),
                                              direction:
                                                  DismissDirection.endToStart,
                                              onDismissed: (direction) {
                                                context
                                                    .read<
                                                        EditPersonalInfoCubit>()
                                                    .removeBabyData(element.id);

                                                context
                                                    .read<
                                                        DropDownButtonNameCubit>()
                                                    .getCurrentIdAndIndex(
                                                        null, 0);
                                              },
                                              child: ListTile(
                                                title: Text(element.name),
                                              ),
                                            ),
                                          ),
                                        ),
                                      )
                                      .toList(),
                                  value:
                                      selectedValue ?? personalInfo[index].id,
                                ),
                              ],
                            ),
                            actions: [
                              Padding(
                                padding: const EdgeInsets.only(right: 24.0),
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
                                  builder: (context) => EditPersonalInfoPage(
                                      id: personalState.items[0].id),
                                ),
                              );
                            },
                            onAppointmentsTap: () {
                              Navigator.of(context).pop();
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => EditPersonalInfoPage(
                                      id: personalState.items[0].id),
                                ),
                              );
                            },
                            onDocumentsTap: () {
                              Navigator.of(context).pop();
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => EditPersonalInfoPage(
                                      id: personalState.items[0].id),
                                ),
                              );
                            },
                            onPersonalInfoTap: () {
                              Navigator.of(context).pop();
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => EditPersonalInfoPage(
                                      id: personalState.items[0].id),
                                ),
                              );
                            },
                          ),
                          body: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
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
                                      PersonalInfo(id: personalInfo[index].id),
                                    // if (personalInfo.isNotEmpty)
                                    //   AnalyticsInfoPage(
                                    //       id: context
                                    //           .read<AnalyticsCubit>()
                                    //           .state
                                    //           .items[index]
                                    //           .id),

                                    AnalyticsInfoPage(
                                      id: context
                                                  .watch<AnalyticsCubit>()
                                                  .state
                                                  .items
                                                  .length >
                                              index
                                          ? context
                                              .watch<AnalyticsCubit>()
                                              .state
                                              .items[index]
                                              .id
                                          : '',
                                    ),
                                    if (personalInfo.isNotEmpty)
                                      PersonalInfo(id: personalInfo[index].id),
                                    if (personalInfo.isNotEmpty)
                                      PersonalInfo(id: personalInfo[index].id),
                                    if (personalInfo.isEmpty) const Text('no'),
                                    if (personalInfo.isEmpty) const Text('no'),
                                    if (personalInfo.isEmpty) const Text('no'),
                                    if (personalInfo.isEmpty) const Text('no'),
                                  ],
                                  // Text(tabBarviewM(analyticsItems).length.toString()),
                                ),
                              ),
                            ],
                          ),
                          floatingActionButton: FloatingActionButton(
                              backgroundColor: Colors.grey[800],
                              onPressed: () => Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (_) => BlocProvider.value(
                                        value: BlocProvider.of<
                                            EditPersonalInfoCubit>(context),
                                        child: AddChildPage(),
                                      ),
                                    ),
                                  ),
                              child: const Icon(Icons.add)),
                        ),
                      );
                  }
                },
              );
            },
          ),
        ),
      ),
    );
  }
}
