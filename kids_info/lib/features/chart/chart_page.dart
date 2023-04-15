import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kids_info/app/core/enums.dart';
import 'package:kids_info/app/core/injection_container.dart';
import 'package:kids_info/domain/model/chart_model.dart';
import 'package:kids_info/features/home/cubit/home_cubit.dart';

class ChartPage extends StatelessWidget {
  const ChartPage({
    Key? key,
    required this.chartModel,
  }) : super(key: key);

  final ChartModel chartModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("test"),
      ),
      body: BlocProvider<HomeCubit>(
        create: (context) {
          return getIt<HomeCubit>()..start(month: chartModel.month);
        },
        child: BlocBuilder<HomeCubit, HomeState>(builder: (context, state) {
          print(state.result);
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
              // return ListView(
              //   children: [
              //     for (final chart in state.result)
              //       _ChartItemWidget(model: chart)
              //   ],
              // );
              return LineChart(
                LineChartData(
                  lineBarsData: [
                    LineChartBarData(
                      spots: state.result
                          .map((e) => FlSpot(e.month.toDouble(), e.p3))
                          .toList(),
                      isCurved: true,
                      curveSmoothness: 0,
                      barWidth: 2,
                      dotData: FlDotData(show: false),
                    ),
                    LineChartBarData(
                      spots: state.result
                          .map((e) => FlSpot(e.month.toDouble(), e.p5))
                          .toList(),
                      isCurved: true,
                      barWidth: 2,
                      dotData: FlDotData(show: false),
                    ),
                    LineChartBarData(
                      spots: state.result
                          .map((e) => FlSpot(e.month.toDouble(), e.p10))
                          .toList(),
                      isCurved: true,
                      barWidth: 2,
                      dotData: FlDotData(show: false),
                    ),
                    LineChartBarData(
                      spots: state.result
                          .map((e) => FlSpot(e.month.toDouble(), e.p15))
                          .toList(),
                      isCurved: true,
                      barWidth: 2,
                      dotData: FlDotData(show: false),
                    ),
                    LineChartBarData(
                      spots: state.result
                          .map((e) => FlSpot(e.month.toDouble(), e.p25))
                          .toList(),
                      isCurved: true,
                      barWidth: 2,
                      dotData: FlDotData(show: false),
                    ),
                    LineChartBarData(
                      spots: state.result
                          .map((e) => FlSpot(e.month.toDouble(), e.p50))
                          .toList(),
                      isCurved: true,
                      barWidth: 2,
                      dotData: FlDotData(show: false),
                    ),
                    LineChartBarData(
                      spots: state.result
                          .map((e) => FlSpot(e.month.toDouble(), e.p75))
                          .toList(),
                      isCurved: true,
                      barWidth: 2,
                      dotData: FlDotData(show: false),
                    ),
                    LineChartBarData(
                      spots: state.result
                          .map((e) => FlSpot(e.month.toDouble(), e.p85))
                          .toList(),
                      isCurved: true,
                      barWidth: 2,
                      dotData: FlDotData(show: false),
                    ),
                    LineChartBarData(
                      spots: state.result
                          .map((e) => FlSpot(e.month.toDouble(), e.p90))
                          .toList(),
                      isCurved: true,
                      barWidth: 2,
                      dotData: FlDotData(show: false),
                    ),
                    LineChartBarData(
                      spots: state.result
                          .map((e) => FlSpot(e.month.toDouble(), e.p95))
                          .toList(),
                      isCurved: true,
                      barWidth: 2,
                      dotData: FlDotData(show: false),
                    ),
                    LineChartBarData(
                      spots: state.result
                          .map((e) => FlSpot(e.month.toDouble(), e.p97))
                          .toList(),
                      isCurved: true,
                      barWidth: 2,
                      dotData: FlDotData(show: false),
                    ),
                  ],
                ),
                swapAnimationDuration: const Duration(microseconds: 200),
                swapAnimationCurve: Curves.linear,
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
        child: Text(model.p50.toString()),
      ),
    );
  }
  // @override
  // Widget build(BuildContext context) {
  //   return Padding(
  //     padding: const EdgeInsets.symmetric(
  //       horizontal: 20,
  //       vertical: 10,
  //     ),
  //     child: Container(
  //       padding: const EdgeInsets.symmetric(
  //         horizontal: 20,
  //         vertical: 20,
  //       ),
  //       color: Colors.black12,
  //       child: Text(model.p50.toString()),
  //     ),
  //   );
  // }
}
