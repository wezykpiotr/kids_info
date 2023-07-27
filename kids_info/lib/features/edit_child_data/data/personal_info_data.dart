// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';

class PersonalInfoData extends Equatable {
  const PersonalInfoData(
      {required this.name,
      required this.birthday,
      required this.weight,
      required this.height});
  final String name;
  final DateTime birthday;
  final double weight;
  final int height;

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'birthday': birthday.millisecondsSinceEpoch,
      'weight': weight,
      'height': height,
    };
  }

  factory PersonalInfoData.fromMap(Map<String, dynamic> map) {
    return PersonalInfoData(
      name: map['name'] as String,
      birthday: DateTime.fromMillisecondsSinceEpoch(map['birthday'] as int),
      weight: map['weight'] as double,
      height: map['height'] as int,
    );
  }

  @override
  List<Object> get props => [name, birthday, weight, height];
}
