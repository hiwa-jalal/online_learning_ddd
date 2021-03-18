import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:online_learning/features/lectures/data/datasources/lectures_remote_data_source.dart';
import 'package:online_learning/features/lectures/domain/entities/lecture_entity.dart';
import 'package:dartz/dartz.dart';
import 'package:online_learning/features/lectures/domain/repository/lectures_repository.dart';
import 'package:online_learning/features/user/core/errors/failures.dart';
import 'package:online_learning/features/user/data/models/user_mode.dart';

@LazySingleton(as: LecturesRepository)
class LecturesRepositoryImpl extends LecturesRepository {
  final FirebaseLecturesRemoteDataSource remoteDataSource;

  LecturesRepositoryImpl(this.remoteDataSource);
  @override
  Future<Either<Failure, LectureEntity>> downloadLecture(String fileUrl) async {
    try {
      final lecture = await remoteDataSource.downloadLecture(fileUrl);
      return right(lecture);
    } on Exception catch (e) {
      print('exceptions ${e.toString()}');
      return left(UserNotFoundFailure());
    }
  }

  @override
  Future<Either<Failure, LectureEntity>> uploadLecture({
    @required String fileUrl,
    @required UserModel user,
    @required String courseTitle,
    String title,
    String description,
  }) async {
    try {
      final lecture = await remoteDataSource.uploadLecture(
        fileUrl: fileUrl,
        user: user,
        lectureTitle: title,
        description: description,
        courseTitle: courseTitle,
      );
      return right(lecture);
    } on Exception catch (e) {
      print('exceptions ${e.toString()}');
      return left(UserNotFoundFailure());
    }
  }

  @override
  Future<Either<Failure, List<LectureEntity>>> getAllLectures() async {
    try {
      final lectures = await remoteDataSource.getAllLectures();
      return right(lectures);
    } catch (e) {
      print(e.toString());
      return left(LectureFailure());
    }
  }

  @override
  Future<Either<Failure, List<LectureEntity>>> getAllLecturesByCourse({
    @required String courseTitle,
  }) async {
    try {
      final lectures = await remoteDataSource.getAllLecturesByCourse(
          courseTitle: courseTitle);
      return right(lectures);
    } catch (e) {
      print(e.toString());
      return left(LectureFailure());
    }
  }

  @override
  Future<Either<Failure, Unit>> createCourse({String courseTitle}) async {
    try {
      remoteDataSource.createCourse(courseTitle: courseTitle);
      return right(unit);
    } catch (e) {
      print(e.toString());
      return left(LectureFailure());
    }
  }

  @override
  Future<Either<Failure, List<String>>> getAllCoursesByUserId({
    @required String userId,
  }) async {
    try {
      final courseIds =
          await remoteDataSource.getAllCoursesByUserId(userId: userId);
      return right(courseIds);
    } catch (e) {
      print(e.toString());
      return left(LectureFailure());
    }
  }

  @override
  Future<Either<Failure, Unit>> submitUser({
    @required String userId,
    @required String courseTitle,
    @required String lectureTitle,
  }) async {
    try {
      final submittedUser = await remoteDataSource.submitUser(
        userId: userId,
        courseTitle: courseTitle,
        lectureTitle: lectureTitle,
      );
      return right(submittedUser);
    } catch (e) {
      print(e.toString());
      return left(LectureFailure());
    }
  }

  @override
  Future<Either<Failure, List<String>>> getAllSubmittedUsers({
    @required String userId,
    @required String courseTitle,
    @required String lectureTitle,
  }) async {
    try {
      final submittedUsers = await remoteDataSource.getAllSubmittedUsers(
        userId: userId,
        courseTitle: courseTitle,
        lectureTitle: lectureTitle,
      );
      return right(submittedUsers);
    } catch (e) {
      print(e.toString());
      return left(LectureFailure());
    }
  }
}
