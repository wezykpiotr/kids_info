import 'package:freezed_annotation/freezed_annotation.dart';
part 'boy_model.g.dart';
part 'boy_model.freezed.dart';

@freezed
class BoyModel with _$BoyModel {
  factory BoyModel(
    int id,
    int weight,
    int age,
    String name,
  ) = _BoyModel;

  factory BoyModel.fromJson(Map<String, dynamic> json) =>
      _$BoyModelFromJson(json);
}
