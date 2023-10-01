// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'test_cubit.dart';

class TestState {
  List<int> weightDataKg = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9];
  int currentValueKg;
  TestState({
    @Default([0, 1, 2, 3, 4, 5, 6, 7, 8, 9]) weightDataKg,
    required this.currentValueKg,
  });
}
