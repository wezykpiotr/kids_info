import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:kids_info/domain/model/chart_model.dart';
import 'package:retrofit/retrofit.dart';

part 'boys_weight_remote_data_source.g.dart';

@injectable
@RestApi()
abstract class BoysWeightRemoteRetrofitDataSource {
  @factoryMethod
  factory BoysWeightRemoteRetrofitDataSource(Dio dio) =
      _BoysWeightRemoteRetrofitDataSource;


  
  @GET("/boys")
  Future<List<ChartModel>> getBoysWeight();
}

// class BoysWeightRemoteDataSource {
//   Future<List<Map<String, dynamic>>?> getBoysWeight() async {
//     final response = await Dio()
//         .get<List<dynamic>>('https://json.extendsclass.com/bin/02a3c6dfde0c');
//     final listDynamic = response.data;
//     if (listDynamic == null) {
//       return null;
//     }
//     return listDynamic.map((e) => e as Map<String, dynamic>).toList();
//   }
// }




//https://json.extendsclass.com/bin/02a3c6dfde0c