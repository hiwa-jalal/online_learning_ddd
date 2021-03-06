import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../user/core/errors/failures.dart';
import '../../../user/core/usecase/use_case.dart';
import '../entities/homework_entity.dart';
import '../repository/homework_repository.dart';

@lazySingleton
class GetAllHomeworksByCourse extends UseCase<List<HomeworkEntity>, String> {
  final HomeworkRepository? homeworkRepository;

  GetAllHomeworksByCourse({required this.homeworkRepository});
  @override
  Future<Either<Failure, List<HomeworkEntity>>> call(String courseTitle) {
    return homeworkRepository!
        .getAllHomeworksByCourse(courseTitle: courseTitle);
  }
}
