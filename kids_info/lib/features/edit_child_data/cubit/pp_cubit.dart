import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kids_info/features/edit_child_data/data/repository/edit_personal_info_repository.dart';
import 'package:kids_info/features/edit_child_data/domain/edit_model.dart';

part 'pp_state.dart';

class PpCubit extends Cubit<PpState> {
  PpCubit(this._itemsRepository) : super(PpState(editPersonalInfoModel: null));

  final EditPersonalInfoRepository _itemsRepository;

  Future<void> getItemWithID(String id) async {
    final itemModel = await _itemsRepository.get(id: id);
    emit(PpState(editPersonalInfoModel: itemModel));
  }
}
