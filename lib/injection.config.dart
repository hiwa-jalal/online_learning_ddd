// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:cloud_firestore/cloud_firestore.dart' as _i7;
import 'package:dio/dio.dart' as _i6;
import 'package:firebase_storage/firebase_storage.dart' as _i8;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'core/firebase_injectable_module.dart' as _i25;
import 'core/lecture_task.dart' as _i10;
import 'features/chat/data/datasources/chat_remote_data_source.dart' as _i3;
import 'features/chat/data/repositories/chat_repository_impl.dart' as _i5;
import 'features/chat/domain/repositories/chat_repository.dart' as _i4;
import 'features/chat/domain/usecases/get_all_messages.dart' as _i9;
import 'features/chat/domain/usecases/send_message.dart' as _i14;
import 'features/chat/presentation/bloc/chat_bloc.dart' as _i17;
import 'features/lectures/data/datasources/lectures_remote_data_source.dart'
    as _i11;
import 'features/lectures/data/repository/lectures_repository_impl.dart'
    as _i13;
import 'features/lectures/domain/repository/lectures_repository.dart' as _i12;
import 'features/lectures/domain/usecases/create_course.dart' as _i18;
import 'features/lectures/domain/usecases/download_lecture.dart' as _i19;
import 'features/lectures/domain/usecases/get_all_courses_by_user_id.dart'
    as _i20;
import 'features/lectures/domain/usecases/get_all_lectures.dart' as _i21;
import 'features/lectures/domain/usecases/get_all_lectures_by_user_id.dart'
    as _i22;
import 'features/lectures/domain/usecases/get_all_submitted_users.dart' as _i23;
import 'features/lectures/domain/usecases/submit_user.dart' as _i15;
import 'features/lectures/domain/usecases/upload_lecture.dart' as _i16;
import 'features/lectures/presentation/bloc/lecture_bloc.dart'
    as _i24; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String environment, _i2.EnvironmentFilter environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final dioInjectableModule = _$DioInjectableModule();
  final firebaseInjectableModule = _$FirebaseInjectableModule();
  gh.lazySingleton<_i3.ChatRemoteDataSource>(
      () => _i3.FireStoreChatRemoteDataSource());
  gh.lazySingleton<_i4.ChatRepository>(() => _i5.ChatRepositoryImpl(
      remoteDataSource: get<_i3.ChatRemoteDataSource>()));
  gh.lazySingleton<_i6.Dio>(() => dioInjectableModule.dio);
  gh.lazySingleton<_i7.FirebaseFirestore>(
      () => firebaseInjectableModule.firebaseFirestore);
  gh.lazySingleton<_i8.FirebaseStorage>(
      () => firebaseInjectableModule.firebaseStorage);
  gh.lazySingleton<_i9.GetAllMessages>(
      () => _i9.GetAllMessages(chatRepository: get<_i4.ChatRepository>()));
  gh.lazySingleton<_i10.LectureTask>(() => _i10.LectureTask());
  gh.lazySingleton<_i11.LecturesRemoteDataSource>(() =>
      _i11.FirebaseLecturesRemoteDataSource(
          lectureTask: get<_i10.LectureTask>(), dio: get<_i6.Dio>()));
  gh.lazySingleton<_i12.LecturesRepository>(() => _i13.LecturesRepositoryImpl(
      get<_i11.FirebaseLecturesRemoteDataSource>()));
  gh.lazySingleton<_i14.SendMessage>(
      () => _i14.SendMessage(chatRepository: get<_i4.ChatRepository>()));
  gh.lazySingleton<_i15.SubmitUser>(() =>
      _i15.SubmitUser(lecturesRepository: get<_i12.LecturesRepository>()));
  gh.lazySingleton<_i16.UploadLecture>(
      () => _i16.UploadLecture(get<_i12.LecturesRepository>()));
  gh.factory<_i17.ChatBloc>(() => _i17.ChatBloc(
      sendMessage: get<_i14.SendMessage>(),
      getAllMessages: get<_i9.GetAllMessages>()));
  gh.lazySingleton<_i18.CreateCourse>(
      () => _i18.CreateCourse(get<_i12.LecturesRepository>()));
  gh.lazySingleton<_i19.DownloadLecture>(
      () => _i19.DownloadLecture(get<_i12.LecturesRepository>()));
  gh.lazySingleton<_i20.GetAllCoursesByUserId>(() => _i20.GetAllCoursesByUserId(
      lecturesRepository: get<_i12.LecturesRepository>()));
  gh.lazySingleton<_i21.GetAllLectures>(() =>
      _i21.GetAllLectures(lecturesRepository: get<_i12.LecturesRepository>()));
  gh.lazySingleton<_i22.GetAllLecturesByUserId>(() =>
      _i22.GetAllLecturesByUserId(
          lecturesRepository: get<_i12.LecturesRepository>()));
  gh.lazySingleton<_i23.GetAllSubmittedUsers>(() => _i23.GetAllSubmittedUsers(
      lecturesRepository: get<_i12.LecturesRepository>()));
  gh.factory<_i24.LectureBloc>(() => _i24.LectureBloc(
      downloadLecture: get<_i19.DownloadLecture>(),
      uploadLecture: get<_i16.UploadLecture>(),
      getAllLectures: get<_i21.GetAllLectures>(),
      getAllLecturesByUserId: get<_i22.GetAllLecturesByUserId>(),
      getAllCoursesByUserId: get<_i20.GetAllCoursesByUserId>(),
      createCourse: get<_i18.CreateCourse>(),
      submitUser: get<_i15.SubmitUser>(),
      getAllSubmittedUsers: get<_i23.GetAllSubmittedUsers>()));
  return get;
}

class _$DioInjectableModule extends _i25.DioInjectableModule {}

class _$FirebaseInjectableModule extends _i25.FirebaseInjectableModule {}
