import 'package:injectable/injectable.dart';
import 'package:kids_info/data/remote_data_source/boys_weight_remote_data_source.dart';
import 'package:kids_info/domain/model/chart_model.dart';


@injectable
class ChartRepository {
  ChartRepository({required this.remoteDataSource});

  final BoysWeightRemoteRetrofitDataSource remoteDataSource;

  Future<List<ChartModel>> getBoysModel() async {
   return remoteDataSource.getBoysWeight();
   
  }
}
