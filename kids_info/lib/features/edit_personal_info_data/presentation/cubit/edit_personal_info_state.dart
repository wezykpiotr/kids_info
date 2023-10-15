part of 'edit_personal_info_cubit.dart';

@freezed
class EditPersonalInfoState with _$EditPersonalInfoState {
  factory EditPersonalInfoState({
    @Default([]) List<EditPersonalInfoModel> items,
    @Default(Status.initial) Status status,
    String? errorMessage,
    File? file,
    EditPersonalInfoModel? item,
    EditPersonalInfoModelAddChild? infoModelAddChild,
    @Default(false) bool deleted,
    @Default(false) bool added,
  }) = _EditPersonalInfoState;
}
