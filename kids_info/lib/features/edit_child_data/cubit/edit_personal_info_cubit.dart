import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:firebase_storage/firebase_storage.dart';
// import 'package:image_picker/image_picker.dart';
import 'package:kids_info/app/core/enums.dart';
import 'package:kids_info/features/edit_child_data/data/repository/edit_personal_info_repository.dart';
import 'package:kids_info/features/edit_child_data/domain/edit_model.dart';

part 'edit_personal_info_state.dart';
part 'edit_personal_info_cubit.freezed.dart';

@injectable
class EditPersonalInfoCubit extends Cubit<EditPersonalInfoState> {
  EditPersonalInfoCubit(this._editPersonalInfoRepository)
      : super(EditPersonalInfoState());

  // List<EditPersonalInfoModel> newL = [
  //   EditPersonalInfoModel(
  //       id: '1', name: "PP", birthday: DateTime(1999), weight: 2, height: 55),
  //   EditPersonalInfoModel(
  //       id: '2', name: 'ww', birthday: DateTime(1922), weight: 2, height: 44)
  // ];

  StreamSubscription? _streamSubscription;
  final EditPersonalInfoRepository _editPersonalInfoRepository;
  // final FirebaseStorage _storage = FirebaseStorage.instance;
  // final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  // Future<void> test() async {
  //   emit(EditPersonalInfoState(items: newL));
  // }

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

  // Future<void> getItemWithID(String id) async {
  //   final itemModel = await _editPersonalInfoRepository.get(id: id);
  //   emit(EditPersonalInfoState(editPersonalInfoModel: itemModel));
  // }

  // void pickImage() async {
  //   try {
  //     XFile? image = await ImagePicker().pickImage(source: ImageSource.gallery);
  //     if (image != null) {
  //       dynamic file = File(image.path);
  //       emit(EditPersonalInfoState(file: file));
  //     }
  //   } on Exception catch (e) {
  //     emit(
  //       EditPersonalInfoState(
  //         errorMessage: e.toString(),
  //       ),
  //     );
  //   }
  // }

  Future<void> saveData({
    required String name,
    required DateTime birthday,
    required double weight,
    required int height,
  }) async {
    try {
      await _editPersonalInfoRepository.add(
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

  Future<void> updateData({
    required String id,
    required String name,
    required DateTime birthday,
    required double weight,
    required int height,
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
