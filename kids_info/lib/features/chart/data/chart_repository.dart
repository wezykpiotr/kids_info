import 'package:injectable/injectable.dart';
import 'package:kids_info/features/chart/domain/model/chart_model.dart';
import 'package:kids_info/features/chart/data/remote_data_source/boys_weight_remote_data_source.dart';


@injectable
class ChartRepository {
  ChartRepository({required this.remoteDataSource});

  final BoysWeightRemoteRetrofitDataSource remoteDataSource;

  Future<List<ChartModel>> getBoysModel(int month) async {
    return remoteDataSource.getBoysWeight();
  }
}
