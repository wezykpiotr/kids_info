import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:kids_info/app/core/enums.dart';
import 'package:kids_info/features/chart/data/chart_repository.dart';
import 'package:kids_info/features/chart/domain/model/chart_model.dart';
part 'home_state.dart';

@injectable
class HomeCubit extends Cubit<HomeState> {
  HomeCubit({required this.chartRepository}) : super(HomeState());

  final ChartRepository chartRepository;

  Future<void> start({required int month}) async {
    emit(
      HomeState(
        status: Status.loading,
      ),
    );
    try {
      final results = await chartRepository.getBoysModel(month);
      emit(
        HomeState(
          status: Status.success,
          result: results,
        ),
      );
    } catch (error) {
      emit(
        HomeState(
          status: Status.error,
          errorMessage: error.toString(),
        ),
      );
    }
  }
}
