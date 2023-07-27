// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i6;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:kids_info/app/core/injection_container.dart' as _i11;
import 'package:kids_info/features/chart/data/chart_repository.dart' as _i9;
import 'package:kids_info/features/chart/data/remote_data_source/boys_weight_remote_data_source.dart'
    as _i8;
import 'package:kids_info/features/edit_child_data/cubit/edit_personal_info_cubit.dart'
    as _i7;
import 'package:kids_info/features/edit_child_data/data/repository/edit_personal_info_repository.dart'
    as _i4;
import 'package:kids_info/features/home/data/analytics_repository.dart' as _i3;
import 'package:kids_info/features/home/presentation/cubit/home_cubit.dart'
    as _i10;
import 'package:kids_info/features/home/presentation/tabs/cubit/analytics_cubit.dart'
    as _i5;

extension GetItInjectableX on _i1.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final registerModule = _$RegisterModule();
    gh.factory<_i3.AnalyticsRepository>(() => _i3.AnalyticsRepository());
    gh.factory<_i4.EditPersonalInfoRepository>(
        () => _i4.EditPersonalInfoRepository());
    gh.factory<String>(
      () => registerModule.baseUrl,
      instanceName: 'BaseUrl',
    );
    gh.lazySingleton<_i5.AnalyticsCubit>(
        () => _i5.AnalyticsCubit(gh<_i3.AnalyticsRepository>()));
    gh.lazySingleton<_i6.Dio>(
        () => registerModule.dio(gh<String>(instanceName: 'BaseUrl')));
    gh.factory<_i7.EditPersonalInfoCubit>(
        () => _i7.EditPersonalInfoCubit(gh<_i4.EditPersonalInfoRepository>()));
    gh.factory<_i8.BoysWeightRemoteRetrofitDataSource>(
        () => _i8.BoysWeightRemoteRetrofitDataSource(gh<_i6.Dio>()));
    gh.factory<_i9.ChartRepository>(() => _i9.ChartRepository(
        remoteDataSource: gh<_i8.BoysWeightRemoteRetrofitDataSource>()));
    gh.factory<_i10.HomeCubit>(
        () => _i10.HomeCubit(chartRepository: gh<_i9.ChartRepository>()));
    return this;
  }
}

class _$RegisterModule extends _i11.RegisterModule {}
