import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';

import '../../../user/core/errors/failures.dart';
import '../../../user/core/usecase/use_case.dart';
import '../repository/homework_repository.dart';

@lazySingleton
class SubmitHomework extends UseCase<Unit, SubmitParams> {
  final HomeworkRepository? homeworkRepository;

  SubmitHomework(this.homeworkRepository);
  @override
  Future<Either<Failure, Unit>> call(SubmitParams params) {
    return homeworkRepository!.submitHomework(
      userId: params.userId,
      fileUrl: params.fileUrl,
      fileName: params.fileName,
      note: params.note,
      homeworkTitle: params.homeworkTitle,
      submitDate: params.submitDate,
      courseTitle: params.courseTitle,
    );
  }
}

class SubmitParams extends Equatable {
  final String userId;
  final String? fileUrl;
  final String? fileName;
  final String? note;
  final String homeworkTitle;
  final String courseTitle;

  final int? submitDate;

  SubmitParams({
    required this.userId,
    required this.fileUrl,
    required this.fileName,
    required this.note,
    required this.homeworkTitle,
    required this.submitDate,
    required this.courseTitle,
  });

  @override
  List<Object?> get props => [
        userId,
        fileUrl,
        note,
        homeworkTitle,
        submitDate,
        courseTitle,
        fileName,
      ];
}
