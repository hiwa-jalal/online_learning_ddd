import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:online_learning/features/lectures/core/params/submit_params.dart';
import 'package:online_learning/features/lectures/domain/usecases/get_all_submitted_users.dart';

part 'submit_state.dart';
part 'submit_cubit.freezed.dart';

class SubmitCubit extends Cubit<SubmitState> {
  final GetAllSubmittedUsers getAllSubmittedUsers;

  SubmitCubit({@required this.getAllSubmittedUsers})
      : super(SubmitState.initial());

  void getAllSubmittedUsersEvent({
    @required SubmitParams submitParams,
  }) async {
    final submittedUsersEither = await getAllSubmittedUsers.call(
      SubmitParams(
        userId: submitParams.userId,
        courseTitle: submitParams.courseTitle,
        lectureTitle: submitParams.lectureTitle,
      ),
    );
    submittedUsersEither.fold(
      (failure) => emit(SubmitState.failure()),
      (submittedUsers) => emit(
        SubmitState.allSubmittedUsersLoaded(submittedUsers: submittedUsers),
      ),
    );
  }
}
