import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';

class SubmitParams extends Equatable {
  final String userId;
  final String courseTitle;
  final String lectureTitle;

  const SubmitParams({
    @required this.userId,
    @required this.courseTitle,
    @required this.lectureTitle,
  });

  @override
  List<Object> get props => [userId, courseTitle, lectureTitle];
}
