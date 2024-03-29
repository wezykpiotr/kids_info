// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i10;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:kids_info/app/core/injection_container.dart' as _i15;
import 'package:kids_info/features/add_child/presentation/cubit/measurments_cubit.dart'
    as _i7;
import 'package:kids_info/features/chart/data/chart_repository.dart' as _i13;
import 'package:kids_info/features/chart/data/remote_data_source/boys_weight_remote_data_source.dart'
    as _i12;
import 'package:kids_info/features/chart/presentation/cubit/chart_cubit.dart'
    as _i14;
import 'package:kids_info/features/edit_analytics_info_data/data/analytics_repository.dart'
    as _i3;
import 'package:kids_info/features/edit_personal_info_data/data/repository/edit_personal_info_repository.dart'
    as _i6;
import 'package:kids_info/features/edit_personal_info_data/presentation/cubit/edit_personal_info_cubit.dart'
    as _i11;
import 'package:kids_info/features/home/presentation/tabs/cubit/analytics_cubit.dart'
    as _i9;
import 'package:kids_info/features/home/presentation/tabs/cubit/details_cubit.dart'
    as _i4;
import 'package:kids_info/features/home/presentation/tabs/cubit/drop_down_button_name_cubit.dart'
    as _i5;
import 'package:kids_info/features/home/presentation/tabs/cubit/tab_index_cubit.dart'
    as _i8;

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
    gh.factory<_i4.DetailsCubit>(
        () => _i4.DetailsCubit(gh<_i3.AnalyticsRepository>()));
    gh.factory<_i5.DropDownButtonNameCubit>(
        () => _i5.DropDownButtonNameCubit());
    gh.factory<_i6.EditPersonalInfoRepository>(
        () => _i6.EditPersonalInfoRepository());
    gh.lazySingleton<_i7.MeasurmentsCubit>(() => _i7.MeasurmentsCubit());
    gh.factory<String>(
      () => registerModule.baseUrl,
      instanceName: 'BaseUrl',
    );
    gh.factory<_i8.TabIndexCubit>(() => _i8.TabIndexCubit());
    gh.factory<_i9.AnalyticsCubit>(
        () => _i9.AnalyticsCubit(gh<_i3.AnalyticsRepository>()));
    gh.lazySingleton<_i10.Dio>(
        () => registerModule.dio(gh<String>(instanceName: 'BaseUrl')));
    gh.factory<_i11.EditPersonalInfoCubit>(() => _i11.EditPersonalInfoCubit(
          gh<_i6.EditPersonalInfoRepository>(),
          gh<_i3.AnalyticsRepository>(),
        ));
    gh.factory<_i12.BoysWeightRemoteRetrofitDataSource>(
        () => _i12.BoysWeightRemoteRetrofitDataSource(gh<_i10.Dio>()));
    gh.factory<_i13.ChartRepository>(() => _i13.ChartRepository(
        remoteDataSource: gh<_i12.BoysWeightRemoteRetrofitDataSource>()));
    gh.factory<_i14.ChartCubit>(
        () => _i14.ChartCubit(chartRepository: gh<_i13.ChartRepository>()));
    return this;
  }
}

class _$RegisterModule extends _i15.RegisterModule {}
