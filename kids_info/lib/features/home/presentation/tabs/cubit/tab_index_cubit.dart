import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/foundation.dart';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'tab_index_state.dart';
part 'tab_index_cubit.freezed.dart';

@injectable
class TabIndexCubit extends Cubit<TabIndexState> {
  TabIndexCubit() : super( TabIndexState(index: 0));

  Future<void> updateIndex(int index) async {
    emit(TabIndexState(index: index));
  }
}
