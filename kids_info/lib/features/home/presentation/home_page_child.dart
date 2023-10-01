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

  var selectedValue;
  var index;

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
      child: Scaffold(
        body: BlocBuilder<DropDownButtonNameCubit, DropDownButtonNameState>(
          builder: (context, dropDownState) {
            index = dropDownState.index;
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
                    ));
                  case Status.success:
                    final personalInfo = personalState.items;
                    return DefaultTabController(
                      length: myTabs.length,
                      child: Scaffold(
                        appBar: AppBar(
                          backgroundColor: Colors.transparent,
                          iconTheme: IconThemeData(color: Colors.grey[800]),
                          elevation: 0,
                          title: DropdownButton(
                            hint: const Text('Select a child'),
                            onChanged: (value) {
                              if (value == null) return;
                              index = personalInfo.indexWhere(
                                  (element) => element.name == value);
                              context
                                  .read<DropDownButtonNameCubit>()
                                  .getCurrentNameAndIndex(
                                    value.toString(),
                                    index,
                                  );

                              selectedValue = value;
                            },
                            items: personalInfo
                                .map(
                                  (element) => DropdownMenuItem(
                                    value: element.name,
                                    child: Text(element.name),
                                  ),
                                )
                                .toList(),
                            value: selectedValue ??= personalInfo.first.name,
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
                                  PersonalInfo(id: personalInfo[index].id),
                                  PersonalInfo(id: personalInfo[index].id),
                                  PersonalInfo(id: personalInfo[index].id),
                                  PersonalInfo(id: personalInfo[index].id),
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
                                    builder: (context) => AddChildPage())),
                            child: const Icon(Icons.add)),
                      ),
                    );
                }
              },
            );
          },
        ),
      ),
    );
  }
}
