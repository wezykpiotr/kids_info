part of 'edit_personal_info_cubit.dart';

@freezed
class EditPersonalInfoState with _$EditPersonalInfoState {
  factory EditPersonalInfoState({
    @Default([]) List<EditPersonalInfoModel> items,
    @Default(Status.initial) Status status,
    String? errorMessage,
  }) = _EditPersonalInfoState;
}
