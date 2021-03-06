import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';

import '../../../user/core/errors/failures.dart';
import '../../../user/core/usecase/use_case.dart';
import '../../../user/data/models/user_model.dart';
import '../repository/lectures_repository.dart';

@lazySingleton
class DownloadLecture extends UseCase<Unit, LectureParams> {
  final LecturesRepository? lecturesRepository;

  DownloadLecture(this.lecturesRepository);
  @override
  Future<Either<Failure, Unit>> call(LectureParams params) {
    return lecturesRepository!.downloadLecture(
      courseTitle: params.courseTitle,
      fileUrl: params.fileUrl,
      lectureTitle: params.lectureTitle,
    );
  }
}

class LectureParams extends Equatable {
  final String fileUrl;
  final String fileName;
  final String lectureTitle;
  final String? description;
  final String courseTitle;
  final UserModel user;

  LectureParams({
    required this.lectureTitle,
    required this.fileName,
    required this.fileUrl,
    required this.courseTitle,
    required this.user,
    this.description,
  });
  @override
  List<Object?> get props => [
        fileUrl,
        lectureTitle,
        courseTitle,
        description,
        user,
        fileName,
      ];
}
