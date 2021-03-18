import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:online_learning/features/lectures/core/params/submit_params.dart';
import 'package:online_learning/features/lectures/domain/repository/lectures_repository.dart';
import 'package:online_learning/features/user/core/errors/failures.dart';
import 'package:online_learning/features/user/core/usecase/use_case.dart';

@lazySingleton
class SubmitUser extends UseCase<Unit, SubmitParams> {
  final LecturesRepository lecturesRepository;

  SubmitUser({@required this.lecturesRepository});
  @override
  Future<Either<Failure, Unit>> call(SubmitParams submitParams) {
    return lecturesRepository.submitUser(
      userId: submitParams.userId,
      courseTitle: submitParams.courseTitle,
      lectureTitle: submitParams.lectureTitle,
    );
  }
}
