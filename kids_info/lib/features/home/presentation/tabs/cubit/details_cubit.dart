import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kids_info/features/edit_analytics_info_data/data/analytics_repository.dart';
import 'package:kids_info/features/edit_analytics_info_data/domain/analytics_model.dart';

part 'details_cubit.freezed.dart';
part 'details_state.dart';

@lazySingleton
class DetailsCubit extends Cubit<DetailsState> {
  DetailsCubit(this._itemsRepository)
      : super(DetailsState(analyticsModel: null));

  final AnalyticsRepository _itemsRepository;

  Future<void> getItemWithID(String id) async {
    final itemModel = await _itemsRepository.get(id: id);
    emit(DetailsState(analyticsModel: itemModel));
  }
}
