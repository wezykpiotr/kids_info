import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kids_info/app/core/enums.dart';
import 'package:kids_info/features/home/domain/analytics_model.dart';
import 'package:kids_info/features/home/data/analytics_repository.dart';

part 'analytics_state.dart';
part 'analytics_cubit.freezed.dart';

@lazySingleton
class AnalyticsCubit extends Cubit<AnalyticsState> {
  AnalyticsCubit(this._analyticsRepository) : super(AnalyticsState());

  StreamSubscription? _streamSubscription;
  final AnalyticsRepository _analyticsRepository;

  Future<void> start() async {
    emit(
      AnalyticsState(status: Status.loading),
    );
    await Future.delayed(const Duration(seconds: 5));
    _streamSubscription = _analyticsRepository.getItemsStream().listen(
      (items) {
        emit(
          AnalyticsState(
              items: items, status: Status.success, errorMessage: ''),
        );
      },
    )..onError(
        (error) {
          emit(
            AnalyticsState(
              errorMessage: error.toString(),
            ),
          );
        },
      );
  }

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
    return super.close();
  }
}
