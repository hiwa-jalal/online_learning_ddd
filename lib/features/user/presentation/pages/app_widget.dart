import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:online_learning/features/lectures/data/datasources/lectures_remote_data_source.dart';
import 'package:online_learning/features/lectures/data/repository/lectures_repository_impl.dart';
import 'package:online_learning/features/lectures/domain/usecases/download_lecture.dart';
import 'package:online_learning/features/lectures/domain/usecases/get_lecture_progress.dart';
import 'package:online_learning/features/lectures/domain/usecases/upload_lecture.dart';
import 'package:online_learning/features/lectures/presentation/UI/pages/lecture_form_page.dart';

import 'package:online_learning/features/lectures/presentation/bloc/lecture_bloc.dart';
import 'package:online_learning/features/lectures/presentation/bloc/progress_bloc/progress_bloc.dart';
import 'package:online_learning/features/user/data/datasources/user_remote_data_source.dart';
import 'package:online_learning/features/user/data/repositories/user_repository_impl.dart';
import 'package:online_learning/features/user/domain/usecase/get_user.dart';
import 'package:online_learning/features/user/presentation/bloc/user_auth_bloc.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => UserAuthBloc(
              GetUser(UserRepositoryImpl(FirebaseUserRemoteDataSource()))),
        ),
        BlocProvider(
          create: (_) => LectureBloc(
              downloadLecture: DownloadLecture(
                LecturesRepositoryImpl(
                  FirebaseLecturesRemoteDataSource(dio: Dio()),
                ),
              ),
              uploadLecture: UploadLecture(LecturesRepositoryImpl(
                  FirebaseLecturesRemoteDataSource(dio: Dio())))),
        ),
        BlocProvider(
          create: (context) => ProgressBloc(
            lectureBloc: context.read<LectureBloc>(),
            lectureProgress: GetLectureProgress(
              LecturesRepositoryImpl(
                FirebaseLecturesRemoteDataSource(dio: Dio()),
              ),
            ),
          ),
          child: Container(),
        )
      ],
      child: ScreenUtilInit(
        child: GetMaterialApp(
          debugShowCheckedModeBanner: false,
          home: Scaffold(
            body: LectureFormPage(),
          ),
        ),
      ),
    );
  }
}