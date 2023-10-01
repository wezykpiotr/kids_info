import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:kids_info/app/core/enums.dart';
import 'package:kids_info/features/chart/data/chart_repository.dart';
import 'package:kids_info/features/chart/domain/model/chart_model.dart';
part 'chart_state.dart';

@injectable
class ChartCubit extends Cubit<ChartState> {
 ChartCubit({required this.chartRepository}) : super(ChartState());

  final ChartRepository chartRepository;

  Future<void> start({required int month}) async {
    emit(
      ChartState(
        status: Status.loading,
      ),
    );
    try {
      final results = await chartRepository.getBoysModel(month);
      emit(
        ChartState(
          status: Status.success,
          result: results,
        ),
      );
    } catch (error) {
      emit(
        ChartState(
          status: Status.error,
          errorMessage: error.toString(),
        ),
      );
    }
  }
}
