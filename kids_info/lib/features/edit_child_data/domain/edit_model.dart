// import 'dart:convert';

class EditPersonalInfoModel {
  EditPersonalInfoModel({
    required this.id,
    required this.name,
    required this.birthday,
    required this.weight,
    required this.height,
  });
  String id;
  String name;
  DateTime birthday;
  double weight;
  int height;

  // EditPersonalInfoModel copyWith({
  //   String? id,
  //   String? name,
  //   DateTime? birthday,
  //   double? weight,
  //   int? height,
  // }) {
  //   return EditPersonalInfoModel(
  //     id: id ?? this.id,
  //     name: name ?? this.name,
  //     birthday: birthday ?? this.birthday,
  //     weight: weight ?? this.weight,
  //     height: height ?? this.height,
  //   );
  // }

  // Map<String, dynamic> toMap() {
  //   return <String, dynamic>{
  //     'id': id,
  //     'name': name,
  //     'birthday': birthday.millisecondsSinceEpoch,
  //     'weight': weight,
  //     'height': height,
  //   };
  // }

  // factory EditPersonalInfoModel.fromMap(Map<String, dynamic> map) {
  //   return EditPersonalInfoModel(
  //     id: map['id'] as String,
  //     name: map['name'] as String,
  //     birthday: DateTime.fromMillisecondsSinceEpoch(map['birthday'] as int),
  //     weight: map['weight'] as double,
  //     height: map['height'] as int,
  //   );
  // }

  // String toJson() => json.encode(toMap());

  // factory EditPersonalInfoModel.fromJson(String source) =>
  //     EditPersonalInfoModel.fromMap(
  //         json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'EditPersonalInfoModel(id: $id, name: $name, birthday: $birthday, weight: $weight, height: $height)';
  }

  // @override
  // bool operator ==(covariant EditPersonalInfoModel other) {
  //   if (identical(this, other)) return true;

  //   return other.id == id &&
  //       other.name == name &&
  //       other.birthday == birthday &&
  //       other.weight == weight &&
  //       other.height == height;
  // }

  // @override
  // int get hashCode {
  //   return id.hashCode ^
  //       name.hashCode ^
  //       birthday.hashCode ^
  //       weight.hashCode ^
  //       height.hashCode;
  // }
}
