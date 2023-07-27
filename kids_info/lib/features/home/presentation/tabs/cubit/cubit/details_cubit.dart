import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kids_info/features/home/presentation/tabs/cubit/cubit/details_state.dart';
import 'package:kids_info/features/home/data/analytics_repository.dart';

class DetailsCubit extends Cubit<DetailsState> {
  DetailsCubit(this._itemsRepository) : super(DetailsState(analyticModel: null));

  final AnalyticsRepository _itemsRepository;

  Future<void> getItemWithID(String id) async {
    final itemModel = await _itemsRepository.get(id: id);
    emit(DetailsState(analyticModel: itemModel));
  }
}
