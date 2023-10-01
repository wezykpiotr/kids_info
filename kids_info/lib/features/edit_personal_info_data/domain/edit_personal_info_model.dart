import 'package:freezed_annotation/freezed_annotation.dart';

part 'edit_personal_info_model.freezed.dart';

@freezed
class EditPersonalInfoModel with _$EditPersonalInfoModel {
  factory EditPersonalInfoModel({
    required String id,
    required String name,
    required DateTime birthday,
    required String weight,
    required num height,
  }) = _EditPersonalInfoModel;
  factory EditPersonalInfoModel.addChild(
      {required String id,
      required String name,
      required String sex,
      required bool twin,
      required DateTime birthday,
      required String weight,
      required num height,
      required num headSize}) = EditPersonalInfoModelAddChild;



}































// part 'edit_personal_info_model.freezed.dart';

// @freezed
// class EditPersonalInfoModel with _$EditPersonalInfoModel {
//   factory EditPersonalInfoModel({
//     required String id,
//     required String name,
//     required DateTime birthday,
//     required num weight,
//     required num height,
//   }) = _EditPersonalInfoModel;

 
// }