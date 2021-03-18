// import 'package:get_it/get_it.dart';
// import 'package:online_learning/features/lectures/data/datasources/lectures_remote_data_source.dart';
// import 'package:online_learning/features/lectures/data/models/lecture_model.dart';
// import 'package:online_learning/features/lectures/domain/usecases/get_lecture.dart';
// import 'package:online_learning/features/user/data/datasources/user_remote_data_source.dart';
// import 'package:online_learning/features/user/data/repositories/user_repository_impl.dart';
// import 'package:online_learning/features/user/domain/repositories/user_repository.dart';
// import 'package:online_learning/features/user/domain/usecase/get_user.dart';
// import 'package:online_learning/features/user/presentation/bloc/user_auth_bloc.dart';

// import 'features/lectures/data/repository/lectures_repository_impl.dart';
// import 'features/lectures/domain/repository/lectures_repository.dart';
// import 'features/lectures/domain/usecases/post_lecture.dart';
// import 'features/lectures/presentation/bloc/lecture_bloc.dart';

import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:online_learning/features/lectures/data/datasources/lectures_remote_data_source.dart';

import 'injection.config.dart';

final sl = GetIt.I;

// Future<void> init() async {
//   sl.registerLazySingleton<LecturesRemoteDataSource>(
//     () => FirebaseLecturesRemoteDataSource(),
//   );
// }

//   // USECASES
//   sl.registerLazySingleton(() => GetUser(sl()));
//   sl.registerLazySingleton(() => PostLecture(sl()));
//   sl.registerLazySingleton(() => GetLecture(sl()));

// // DATASOURCES
//   sl.registerLazySingleton<UserRemoteDataSource>(
//       () => FirebaseUserRemoteDataSource());
//   sl.registerLazySingleton<LecturesRemoteDataSource>(
//       () => FirebaseLecturesRemoteDataSource());

//   // REPOSITORIES
//   sl.registerLazySingleton<UserRepository>(() => UserRepositoryImpl(sl()));
//   sl.registerLazySingleton<LecturesRepository>(
//       () => LecturesRepositoryImpl(sl()));
// }

// import 'package:get_it/get_it.dart';
// import 'package:injectable/injectable.dart';
// import 'package:online_learning/features/lectures/domain/usecases/get_lecture_progress.dart';
// import 'package:online_learning/injection.config.dart';

// final getIt = GetIt.instance;

@injectableInit
void configureInjection() => $initGetIt(sl);
