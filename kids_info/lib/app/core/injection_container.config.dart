// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i8;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:kids_info/app/core/injection_container.dart' as _i13;
import 'package:kids_info/features/add_child/presentation/cubit/weight_cubit.dart'
    as _i6;
import 'package:kids_info/features/chart/data/chart_repository.dart' as _i11;
import 'package:kids_info/features/chart/data/remote_data_source/boys_weight_remote_data_source.dart'
    as _i10;
import 'package:kids_info/features/chart/presentation/cubit/chart_cubit.dart'
    as _i12;
import 'package:kids_info/features/edit_analytics_info_data/data/analytics_repository.dart'
    as _i3;
import 'package:kids_info/features/edit_personal_info_data/data/repository/edit_personal_info_repository.dart'
    as _i5;
import 'package:kids_info/features/edit_personal_info_data/presentation/cubit/edit_personal_info_cubit.dart'
    as _i9;
import 'package:kids_info/features/home/presentation/tabs/cubit/analytics_cubit.dart'
    as _i7;
import 'package:kids_info/features/home/presentation/tabs/cubit/details_cubit.dart'
    as _i4;

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
    gh.lazySingleton<_i4.DetailsCubit>(
        () => _i4.DetailsCubit(gh<_i3.AnalyticsRepository>()));
    gh.factory<_i5.EditPersonalInfoRepository>(
        () => _i5.EditPersonalInfoRepository());
    gh.factory<String>(
      () => registerModule.baseUrl,
      instanceName: 'BaseUrl',
    );
    gh.lazySingleton<_i6.WeightCubit>(() => _i6.WeightCubit());
    gh.lazySingleton<_i7.AnalyticsCubit>(
        () => _i7.AnalyticsCubit(gh<_i3.AnalyticsRepository>()));
    gh.lazySingleton<_i8.Dio>(
        () => registerModule.dio(gh<String>(instanceName: 'BaseUrl')));
    gh.factory<_i9.EditPersonalInfoCubit>(
        () => _i9.EditPersonalInfoCubit(gh<_i5.EditPersonalInfoRepository>()));
    gh.factory<_i10.BoysWeightRemoteRetrofitDataSource>(
        () => _i10.BoysWeightRemoteRetrofitDataSource(gh<_i8.Dio>()));
    gh.factory<_i11.ChartRepository>(() => _i11.ChartRepository(
        remoteDataSource: gh<_i10.BoysWeightRemoteRetrofitDataSource>()));
    gh.factory<_i12.ChartCubit>(
        () => _i12.ChartCubit(chartRepository: gh<_i11.ChartRepository>()));
    return this;
  }
}

class _$RegisterModule extends _i13.RegisterModule {}
