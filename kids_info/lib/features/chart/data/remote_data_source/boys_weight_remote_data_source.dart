import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:kids_info/features/chart/domain/model/chart_model.dart';
import 'package:retrofit/retrofit.dart';

part 'boys_weight_remote_data_source.g.dart';

@injectable
@RestApi()
abstract class BoysWeightRemoteRetrofitDataSource {
  @factoryMethod
  factory BoysWeightRemoteRetrofitDataSource(Dio dio) =
      _BoysWeightRemoteRetrofitDataSource;


  
  @GET("/boys_weight")
  Future<List<ChartModel>> getBoysWeight();
}