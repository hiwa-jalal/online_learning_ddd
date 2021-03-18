part of 'lecture_bloc.dart';

@freezed
abstract class LectureState with _$LectureState {
  // const factory LectureState({
  //   @required String userId,
  // }) = _LectureState;

  //  factory LectureState.initial() => LectureState(userId: '21');
  const factory LectureState.initial() = _Initial;
  const factory LectureState.loading() = _Loading;
  const factory LectureState.failure() = _Failure;
  const factory LectureState.lectureLoaded({
    @required LectureEntity lectureEntity,
  }) = _LectureLoaded;
  const factory LectureState.allLecturesLoaded({
    @required List<LectureEntity> lecturesEntities,
    List<String> submittedUsers,
  }) = _AllLecturesLoaded;
  const factory LectureState.allCoursesLoaded({
    @required List<String> courseIds,
  }) = _AllCoursesLoaded;

  const factory LectureState.allSubmittedUsersLoaded({
    @required List<String> submittedUsers,
  }) = _AllSubmittedUsersLoaded;
}
