import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:online_learning/features/lectures/domain/entities/lecture_entity.dart';
import 'package:online_learning/features/user/core/errors/failures.dart';
import 'package:online_learning/features/user/data/models/user_mode.dart';

abstract class LecturesRepository {
  Future<Either<Failure, LectureEntity>> downloadLecture(String fileUrl);
  Future<Either<Failure, LectureEntity>> uploadLecture({
    @required String fileUrl,
    @required UserModel user,
    @required String courseTitle,
    String title,
    String description,
  });
  Future<Either<Failure, List<LectureEntity>>> getAllLectures();
  Future<Either<Failure, List<LectureEntity>>> getAllLecturesByCourse({
    @required String courseTitle,
  });
  Future<Either<Failure, List<String>>> getAllCoursesByUserId({
    @required String userId,
  });
  Future<Either<Failure, Unit>> createCourse({
    @required String courseTitle,
  });

  Future<Either<Failure, Unit>> submitUser({
    @required String userId,
    @required String courseTitle,
    @required String lectureTitle,
  });

  Future<Either<Failure, List<String>>> getAllSubmittedUsers({
    @required String userId,
    @required String courseTitle,
    @required String lectureTitle,
  });
}
