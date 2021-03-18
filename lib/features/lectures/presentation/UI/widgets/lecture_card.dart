import 'package:flutter/material.dart';
import 'package:online_learning/features/lectures/core/params/submit_params.dart';
import 'package:online_learning/features/lectures/presentation/bloc/lecture_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:online_learning/features/user/cubit/submit_cubit.dart';

class LectureCard extends StatefulWidget {
  final String lectureTitle;
  final String courseTitle;

  const LectureCard({
    Key key,
    @required this.lectureTitle,
    @required this.courseTitle,
  }) : super(key: key);

  @override
  _LectureCardState createState() => _LectureCardState();
}

class _LectureCardState extends State<LectureCard> {
  @override
  Widget build(BuildContext context) {
    final lectureBloc = context.read<LectureBloc>();
    // lectureBloc.add(
    //   LectureEvent.getAllSubmittedUsers(
    //     userId: '12',
    //     courseTitle: widget.courseTitle,
    //     lectureTitle: widget.lectureTitle,
    //   ),
    // );
    context.read<SubmitCubit>().getAllSubmittedUsersEvent(
          submitParams: SubmitParams(
            userId: '12',
            courseTitle: widget.courseTitle,
            lectureTitle: widget.lectureTitle,
          ),
        );
    return BlocBuilder<SubmitCubit, SubmitState>(
      builder: (context, state) {
        return state.maybeMap(
          allSubmittedUsersLoaded: (e) {
            final submitted = e.submittedUsers;

            print('submitted =====> $submitted <======');
            return ExpansionTile(
              childrenPadding:
                  EdgeInsets.only(bottom: 8.0, left: 8.0, right: 8.0),
              title: Text(widget.lectureTitle),
              children: [
                SelectableText(
                  'dolor sit amet, consectetur adipiscing elit. Quisque quis congue metus, ac tempus eros. Nunc tincidunt eros arcu, ac dictum nulla convallis sed. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus commodo pretium leo, ac dictum lacus pellentesque quis. Fusce suscipit, orci eget venenatis dignissim, purus turpis imperdiet velit, vitae ullamcorper lectus libero eget eros.',
                ),
                CheckboxListTile(
                  secondary: Icon(Icons.explicit),
                  title: Text('pdf file'),
                  value: false,
                  onChanged: (val) {
                    print('switch on changed');
                    lectureBloc.add(
                      LectureEvent.submitUser(
                        userId: '12',
                        lectureTitle: widget.lectureTitle,
                        courseTitle: widget.courseTitle,
                      ),
                    );
                  },
                )
              ],
            );
          },
          orElse: () => CircularProgressIndicator(
            backgroundColor: Colors.red,
          ),
        );
      },
    );
  }
}
