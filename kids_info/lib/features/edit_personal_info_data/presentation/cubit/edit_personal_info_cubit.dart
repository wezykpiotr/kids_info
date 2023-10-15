import 'dart:async';
import 'dart:io';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:image_picker/image_picker.dart';
import 'package:kids_info/app/core/enums.dart';
import 'package:kids_info/features/edit_personal_info_data/data/repository/edit_personal_info_repository.dart';
import 'package:kids_info/features/edit_personal_info_data/domain/edit_personal_info_model.dart';

part 'edit_personal_info_state.dart';
part 'edit_personal_info_cubit.freezed.dart';

@injectable
class EditPersonalInfoCubit extends Cubit<EditPersonalInfoState> {
  EditPersonalInfoCubit(this._editPersonalInfoRepository)
      : super(EditPersonalInfoState());

  StreamSubscription? _streamSubscription;
  final EditPersonalInfoRepository _editPersonalInfoRepository;

  Future<void> start() async {
    emit(EditPersonalInfoState(status: Status.loading));

    _streamSubscription = _editPersonalInfoRepository.getItemsStream().listen(
      (items) {
        emit(EditPersonalInfoState(
            items: items, status: Status.success, errorMessage: ''));
      },
    )..onError(
        (error) {
          emit(EditPersonalInfoState(errorMessage: error.toString()));
        },
      );
  }

  Future<void> addedFlag() async {
    try {
      emit(EditPersonalInfoState(
        added: true,
      ));
    } catch (error) {
      emit(
        EditPersonalInfoState(errorMessage: error.toString()),
      );
    }
  }

  Future<void> getItemWithID(String id) async {
    final itemModel = await _editPersonalInfoRepository.get(id: id);
    emit(EditPersonalInfoState(item: itemModel));
  }

  void pickImage() async {
    try {
      XFile? image = await ImagePicker().pickImage(source: ImageSource.gallery);
      if (image != null) {
        dynamic file = File(image.path);
        emit(EditPersonalInfoState(file: file));
      }
    } on Exception catch (e) {
      emit(
        EditPersonalInfoState(
          errorMessage: e.toString(),
        ),
      );
    }
  }

//*dodawanie działa
  // Future<void> saveData({
  //   required String name,
  //   required DateTime birthday,
  //   required int weight,
  //   required int height,
  // }) async {
  //   try {
  //     await _editPersonalInfoRepository.add(
  //       name,
  //       birthday,
  //       weight,
  //       height,
  //     );
  //     emit(state);
  //   } catch (error) {
  //     emit(
  //       EditPersonalInfoState(
  //         errorMessage: error.toString(),
  //       ),
  //     );
  //   }
  // }

  Future<void> saveData({
    required String name,
    required DateTime birthday,
    required String weight,
    required num height,
    required num headSize,
    required bool twin,
    required String sex,
  }) async {
    try {
      await _editPersonalInfoRepository.add(
        name,
        birthday,
        weight,
        height,
        sex,
        twin,
        headSize,
      );
      emit(
        EditPersonalInfoState(
            added: true, items: state.items, status: Status.success),
      );
    } catch (error) {
      emit(
        EditPersonalInfoState(
          errorMessage: error.toString(),
        ),
      );
    }
  }

  Future<void> updateData({
    required String id,
    required name,
    required DateTime birthday,
    required weight,
    required height,
  }) async {
    try {
      await _editPersonalInfoRepository.updateBabyInfo(
        id,
        name,
        birthday,
        weight,
        height,
      );
      emit(state);
    } catch (error) {
      emit(
        EditPersonalInfoState(
          errorMessage: error.toString(),
        ),
      );
    }
  }

  Future<void> removeBabyData(String id) async {
    try {
      await _editPersonalInfoRepository.delete(id: id);
      emit(
        EditPersonalInfoState(
          deleted: true,
          status: Status.success,
          items: state.items,
        ),
      );
    } catch (error) {
      emit(
        EditPersonalInfoState(errorMessage: error.toString()),
      );
      start();
    }
  }

  @override
  Future<void> close() {
    _streamSubscription?.cancel();
    return super.close();
  }

  // Future<String> uploadImageToStorage(String childName, dynamic file) async {
  //   Reference ref = _storage.ref().child(childName);
  //   UploadTask uploadTask = ref.putFile(file);
  //   TaskSnapshot snapshot = await uploadTask;
  //   String downloadUrl = await snapshot.ref.getDownloadURL();
  //   return downloadUrl;
  // }

  // Future<String> saveData({
  //   required String name,
  //   required DateTime? date,
  //   required dynamic file,
  //   required double weight,
  //   required int height,
  // }) async {
  //   String resp = " Some Error Occurred";
  //   try {
  //     if (name.isNotEmpty || date != null) {
  //       String imageUrl = await uploadImageToStorage('profileImage', file);
  //       await _firestore
  //           .collection('users')
  //           .doc('RNdCuuECIEYnCP4IQ1gBeYTn9rH2')
  //           .set(
  //         {
  //           'name': name,
  //           'date': date,
  //           'imageLink': imageUrl,
  //           'weight': weight,
  //           'height': height,
  //         },
  //       );
  //       resp = 'success';
  //     }
  //   } catch (err) {
  //     resp = err.toString();
  //   }
  //   return resp;
  // }
}
