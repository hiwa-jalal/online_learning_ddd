import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:online_learning/core/lecture_task.dart';
import 'package:online_learning/features/chat/presentation/bloc/chat_bloc.dart';
import 'package:online_learning/features/lectures/data/datasources/lectures_remote_data_source.dart';
import 'package:online_learning/features/lectures/data/repository/lectures_repository_impl.dart';
import 'package:online_learning/features/lectures/domain/usecases/create_course.dart';
import 'package:online_learning/features/lectures/domain/usecases/download_lecture.dart';
import 'package:online_learning/features/lectures/domain/usecases/get_all_courses_by_user_id.dart';
import 'package:online_learning/features/lectures/domain/usecases/get_all_lectures.dart';
import 'package:online_learning/features/lectures/domain/usecases/get_all_lectures_by_user_id.dart';
import 'package:online_learning/features/lectures/domain/usecases/get_all_submitted_users.dart';
import 'package:online_learning/features/lectures/domain/usecases/submit_user.dart';
import 'package:online_learning/features/lectures/domain/usecases/upload_lecture.dart';
import 'package:online_learning/features/lectures/presentation/bloc/lecture_bloc.dart';
import 'package:online_learning/features/lectures/presentation/bloc/progress_bloc/progress_bloc.dart';
import 'package:online_learning/features/user/cubit/submit_cubit.dart';
import 'package:online_learning/features/user/data/datasources/user_remote_data_source.dart';
import 'package:online_learning/features/user/data/models/user_mode.dart';
import 'package:online_learning/features/user/data/repositories/user_repository_impl.dart';
import 'package:online_learning/features/user/domain/usecase/get_user.dart';
import 'package:online_learning/features/user/domain/usecase/get_users.dart';
import 'package:online_learning/features/user/presentation/bloc/user_auth_bloc.dart';
import 'package:online_learning/features/user/presentation/pages/user_home_page.dart';
import 'package:online_learning/injection.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => SubmitCubit(
            getAllSubmittedUsers: GetAllSubmittedUsers(
              lecturesRepository: LecturesRepositoryImpl(
                FirebaseLecturesRemoteDataSource(
                    lectureTask: sl<LectureTask>(), dio: Dio()),
              ),
            ),
          ),
        ),
        BlocProvider(
          create: (_) => sl<ChatBloc>(),
        ),
        BlocProvider(
          create: (_) => UserAuthBloc(
            getUser:
                GetUser(UserRepositoryImpl(FirebaseUserRemoteDataSource())),
            getUsers:
                GetUsers(UserRepositoryImpl(FirebaseUserRemoteDataSource())),
          ),
        ),
        // BlocProvider(create: (_) => sl<LectureBloc>()),
        BlocProvider(
          create: (_) => LectureBloc(
            downloadLecture: DownloadLecture(
              LecturesRepositoryImpl(
                FirebaseLecturesRemoteDataSource(
                    lectureTask: sl<LectureTask>(), dio: Dio()),
              ),
            ),
            uploadLecture: UploadLecture(LecturesRepositoryImpl(
                FirebaseLecturesRemoteDataSource(
                    dio: Dio(), lectureTask: sl<LectureTask>()))),
            getAllLecturesByUserId: GetAllLecturesByUserId(
              lecturesRepository: LecturesRepositoryImpl(
                FirebaseLecturesRemoteDataSource(
                    lectureTask: sl<LectureTask>(), dio: Dio()),
              ),
            ),
            getAllLectures: GetAllLectures(
              lecturesRepository: LecturesRepositoryImpl(
                FirebaseLecturesRemoteDataSource(
                    lectureTask: sl<LectureTask>(), dio: Dio()),
              ),
            ),
            createCourse: CreateCourse(LecturesRepositoryImpl(
                FirebaseLecturesRemoteDataSource(
                    dio: Dio(), lectureTask: sl<LectureTask>()))),
            getAllCoursesByUserId: GetAllCoursesByUserId(
              lecturesRepository: LecturesRepositoryImpl(
                FirebaseLecturesRemoteDataSource(
                    lectureTask: sl<LectureTask>(), dio: Dio()),
              ),
            ),
            submitUser: SubmitUser(
                lecturesRepository: LecturesRepositoryImpl(
                    FirebaseLecturesRemoteDataSource(
                        dio: Dio(), lectureTask: sl<LectureTask>()))),
            getAllSubmittedUsers: GetAllSubmittedUsers(
              lecturesRepository: LecturesRepositoryImpl(
                FirebaseLecturesRemoteDataSource(
                    lectureTask: sl<LectureTask>(), dio: Dio()),
              ),
            ),
          ),
        ),
        BlocProvider(
          create: (context) => ProgressBloc(
            lectureTask: sl<LectureTask>(),
            lectureBloc: context.read<LectureBloc>(),
          ),
        )
      ],
      child: ScreenUtilInit(
        builder: () => GetMaterialApp(
          debugShowCheckedModeBanner: false,
          home: Scaffold(
            body: UserHomePage(user: UserModel(id: '12')),
          ),
        ),
      ),
    );
  }
}
