part of 'submit_cubit.dart';

@freezed
abstract class SubmitState with _$SubmitState {
  const factory SubmitState.initial() = _Initial;
  const factory SubmitState.failure() = _Failure;

  const factory SubmitState.allSubmittedUsersLoaded({
    @required List<String> submittedUsers,
  }) = _AllSubmittedUsersLoaded;
}
