import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kids_info/app/core/enums.dart';
import 'package:kids_info/features/edit_analytics_info_data/data/analytics_repository.dart';
import 'package:kids_info/features/edit_analytics_info_data/domain/analytics_model.dart';

part 'analytics_state.dart';
part 'analytics_cubit.freezed.dart';

@injectable
class AnalyticsCubit extends Cubit<AnalyticsState> {
  AnalyticsCubit(this._analyticsRepository) : super(AnalyticsState());

  StreamSubscription? _streamSubscription;
  final AnalyticsRepository _analyticsRepository;
  bool emitted = false;

  Future<void> start() async {
    if (!emitted) {
      emit(AnalyticsState(status: Status.loading));
      try {
        _streamSubscription = _analyticsRepository.getItemsStream().listen(
          (items) {
            emit(
              AnalyticsState(
                  items: items, status: Status.success, errorMessage: ''),
            );
          },
        );
      } catch (error) {
        if (!emitted) emit(AnalyticsState(errorMessage: error.toString()));
      }
    }
  }

  // emit(
  //   AnalyticsState(status: Status.loading),
  // );
  // _streamSubscription = _analyticsRepository.getItemsStream().listen(
  //   (items) {
  //     emit(
  //       AnalyticsState(
  //           items: items, status: Status.success, errorMessage: ''),
  //     );
  //   },
  // )..onError(
  //     (error) {
  //       emit(
  //         AnalyticsState(
  //           errorMessage: error.toString(),
  //           status: Status.error,
  //         ),
  //       );
  //     },
  //   );

  Future<void> remove({required String documentID}) async {
    try {
      await _analyticsRepository.delete(id: documentID);
    } catch (error) {
      emit(
        AnalyticsState(errorMessage: error.toString()),
      );
      start();
    }
  }

  @override
  Future<void> close() {
    _streamSubscription?.cancel();
    emitted = true;

    return super.close();
  }
}
