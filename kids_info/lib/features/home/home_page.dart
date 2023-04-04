import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutterfire_ui/firestore.dart';
import 'package:kids_info/app/core/enums.dart';
import 'package:kids_info/app/core/injection_container.dart';
import 'package:kids_info/domain/model/chart_model.dart';
import 'package:kids_info/features/home/cubit/home_cubit.dart';

class HomePage extends StatelessWidget {
  HomePage({
    Key? key,
    required this.currentUser,
  }) : super(key: key);

  final User currentUser;

  final userQuery =
      FirebaseFirestore.instance.collection('users').orderBy('email');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("test"),
      ),
      body: BlocProvider<HomeCubit>(
        create: (context) {
          return getIt<HomeCubit>()..start();
        },
        child: BlocBuilder<HomeCubit, HomeState>(builder: (context, state) {
          switch (state.status) {
            case Status.initial:
              return const Center(
                child: Text('Initial State'),
              );
            case Status.loading:
              return const Center(
                child: CircularProgressIndicator(),
              );
            case Status.success:
              return ListView(
                children: [
                  for (final chart in state.result)
                    _ChartItemWidget(model: chart)
                ],
              );

            case Status.error:
              return Center(
                child: Text(state.errorMessage.toString()),
              );
          }
        }),
      ),
    );
  }
}

class _ChartItemWidget extends StatelessWidget {
  const _ChartItemWidget({
    Key? key,
    required this.model,
  }) : super(key: key);

  final ChartModel model;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 10,
      ),
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 20,
        ),
        color: Colors.black12,
        child: Expanded(
          child: Text(model.p50.toString()),
        ),
      ),
    );
  }
}


//  @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('users collection'),
//         actions: [
//           IconButton(
//             onPressed: () {
//               Navigator.of(context).push(MaterialPageRoute(
//                   builder: (context) => const UserProfileScreen()));
//             },
//             icon: const Icon(Icons.person),
//           )
//         ],
//       ),
//       body: FirestoreListView<Map<String, dynamic>>(
//         query: userQuery,
//         itemBuilder: (context, snapshot) {
//           Map<String, dynamic> user = snapshot.data();
//           return Text('User name is ${user['email']}');
//         },
//       ),
//     );
//   }
// }


// body: FutureBuilder(
//           future: source.getBoysWeight(),
//           builder: (context, snapshot) {
//             if (snapshot.connectionState == ConnectionState.done) {
//               return Text(snapshot.data.toString());
//             } else {
//               return const CircularProgressIndicator();
//             }
//           }),
