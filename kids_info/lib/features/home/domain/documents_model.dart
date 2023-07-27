class AnalyticsModel {
  AnalyticsModel({
    required this.id,
    required this.age,
    required this.height,
    required this.weight,
    required this.headSize,
  });

  final String id;
  final int age;
  final int height;
  final double weight;
  final double headSize;

  @override
  String toString() {
    //
    return 'AnalyticModel: {id: $id, age: $age, height: $height, weight: $weight, headsize: $headSize}';
  }

  // String daysLeft() {
  //   return relaseDate.difference(DateTime.now()).inDays.toString();
  // }

  // String relaseDateFormatted() {
  //   return DateFormat.yMMMEd().format(relaseDate);
}
