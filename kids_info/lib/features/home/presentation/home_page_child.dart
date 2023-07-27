import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:kids_info/app/core/enums.dart';
import 'package:kids_info/app/core/injection_container.dart';
import 'package:kids_info/features/auth/user_profile.dart';
import 'package:kids_info/features/edit_child_data/cubit/edit_personal_info_cubit.dart';
import 'package:kids_info/features/edit_child_data/presentation/personal_info.dart';
import 'package:kids_info/features/home/presentation/tabs/analytics.dart';
import 'package:kids_info/features/home/presentation/tabs/cubit/analytics_cubit.dart';
import 'package:kids_info/util/my_tab.dart';

class HomePageChild extends StatefulWidget {
  const HomePageChild({super.key});

  @override
  State<HomePageChild> createState() => _HomePageChildState();
}

class _HomePageChildState extends State<HomePageChild> {
  List<Widget> myTabs = [
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
      ],
      child: BlocBuilder<AnalyticsCubit, AnalyticsState>(
        builder: (context, state) {
          switch (state.status) {
            case Status.initial:
              return const Center(
                child: Text('Initial'),
              );
            case Status.loading:
              return const Center(
                child: CircularProgressIndicator(),
              );
            case Status.error:
              return Center(child: Text(state.errorMessage ?? "Unkown error"));
            case Status.success:
              final analyticsItems = state.items;
              return DefaultTabController(
                length: myTabs.length,
                child: Scaffold(
                  appBar: AppBar(
                    backgroundColor: Colors.transparent,
                    iconTheme: IconThemeData(color: Colors.grey[800]),
                    elevation: 0,
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
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) =>
                                    const UserProfileScreen()));
                            // account button tapped
                          },
                        ),
                      )
                    ],
                  ),
                  body: Column(
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
                            Analytics(id: analyticsItems[0].id),
                            BlocBuilder<EditPersonalInfoCubit,
                                EditPersonalInfoState>(
                              builder: (context, state) {
                                final item = state.items;
                                if (item.isNotEmpty) {
                                  return PersonalInfo(id: item[0].id);
                                }
                                return const CircularProgressIndicator();
                              },
                            ),
                            Analytics(id: analyticsItems[0].id),
                            Analytics(id: analyticsItems[0].id),
                          ],
                          // Text(tabBarviewM(analyticsItems).length.toString()),
                        ),
                      ),
                    ],
                  ),
                ),
              );
          }
        },
      ),
    );
  }
}
