import 'package:expansion_tile_card/expansion_tile_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:nil/nil.dart';

import '../../../../user/presentation/bloc/user_auth_bloc.dart';
import '../../../domain/entities/lecture_entity.dart';
import '../../bloc/lecture_bloc.dart';
import '../pages/attendance_page.dart';
import '../pages/submit_homework_page.dart';
import '../pages/video_player_page.dart';

class LectureCard extends StatelessWidget {
  final LectureEntity lecture;
  final String courseTitle;
  LectureCard({
    Key? key,
    required this.lecture,
    required this.courseTitle,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final _lectureBloc = context.watch<LectureBloc>();
    final _userAuthState = context.watch<UserAuthBloc>().state;

    final isFileVideo = lecture.fileType!.contains('video');

    final isSubmitted =
        lecture.submittedUsers!.contains(_userAuthState.user.id.toString());

    return ExpansionTileCard(
      contentPadding: EdgeInsets.only(left: 8.0, right: 8.0),
      baseColor: Colors.grey.withOpacity(0.2),
      expandedTextColor: Color(0xff5F36DA),
      expandedColor: Colors.grey.withOpacity(0.2),
      shadowColor: Colors.transparent,
      // childrenPadding: EdgeInsets.only(left: 8.0, right: 8.0),
      title: Text(lecture.title!),
      children: [
        Padding(
          padding: EdgeInsets.only(left: 8.0, right: 8.0),
          child: SelectableText(
            lecture.description!.isEmpty
                ? 'this lecture has no description'
                : lecture.description!,
          ),
        ),
        SizedBox(height: 10.h),
        ListTile(
          hoverColor: Colors.red,
          leading: Icon(
            MdiIcons.file,
            color: Color(0xff5F36DA),
            size: 34,
          ),
          title: Row(
            children: [
              Text(lecture.fileName!),
              Spacer(),
              if (_userAuthState.user.role == 'teacher') ...[
                InkWell(
                  onTap: () => Get.to(
                    () =>
                        AttendancePage(submittedUsers: lecture.submittedUsers!),
                  ),
                  child: Icon(
                    MdiIcons.accountMultipleCheckOutline,
                    color: Color(0xff5F36DA),
                  ),
                ),
              ],
              SizedBox(width: 0.05.sw),
              InkWell(
                onTap: () => _lectureBloc.add(
                  LectureEvent.downloadLecture(
                    fileUrl: lecture.fileUrl!,
                    lectureTitle: lecture.title!,
                    courseTitle: courseTitle,
                  ),
                ),
                child: Icon(
                  Icons.download_outlined,
                  color: Color(0xff5F36DA),
                ),
              ),
              if (isFileVideo) ...[
                SizedBox(width: 0.05.sw),
                InkWell(
                  onTap: () {
                    Get.to(
                      () => VideoPlayerPage(
                        videoUrl: lecture.fileUrl,
                      ),
                    );
                  },
                  child: Icon(
                    Icons.play_circle_filled_outlined,
                    color: APP_PURPlE,
                  ),
                ),
              ]
            ],
          ),
          trailing: _userAuthState.user.role == 'student'
              ? Checkbox(
                  activeColor: Color(0xff5F36DA),
                  value: isSubmitted,
                  onChanged: (_) {
                    _lectureBloc.add(
                      LectureEvent.submitUser(
                        userId: _userAuthState.user.id.toString(),
                        courseTitle: courseTitle,
                        lectureTitle: lecture.title!,
                      ),
                    );
                    // to refresh the list
                    _lectureBloc.add(
                      LectureEvent.getAllLecturesByCourse(
                        courseTitle: courseTitle,
                      ),
                    );
                  },
                )
              : nil,
        ),
      ],
    );
  }
}
