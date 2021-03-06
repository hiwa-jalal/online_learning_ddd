import 'package:date_picker_timeline/date_picker_timeline.dart';
import 'package:date_picker_timeline/extra/dimen.dart';
import 'package:day_night_time_picker/day_night_time_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:mime/mime.dart';
import '../../../../user/data/models/user_model.dart';
import '../../../../homeworks/presentation/bloc/homework_bloc.dart';
import '../../bloc/lecture_bloc.dart';
import '../../bloc/progress_bloc/progress_bloc.dart';
import '../../../../user/domain/entites/user.dart';
import '../../../../user/presentation/bloc/user_auth_bloc.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UploadPage extends StatefulWidget {
  const UploadPage({
    Key? key,
    required this.user,
    required this.courseTitle,
    required this.isHomeWork,
  }) : super(key: key);

  final String courseTitle;
  final bool isHomeWork;
  final UserEntity user;

  @override
  _UploadPageState createState() => _UploadPageState();
}

class _UploadPageState extends State<UploadPage> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LectureBloc, LectureState>(
      listener: (context, state) {
        if (state.isSubmitting!) {
          context.read<ProgressBloc>().add(ProgressEvent.started());
          Get.dialog(ProgressDialog());
        }
      },
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            backgroundColor: Color(0xff101622),
            body: _UploadForm(
              isHomework: widget.isHomeWork,
              user: widget.user,
              courseTitle: widget.courseTitle,
            ),
          ),
        );
      },
    );
  }
}

class ProgressDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ProgressBloc, ProgressState>(
      listener: (context, state) {},
      builder: (context, state) {
        return state.maybeMap(
          loading: (progressState) {
            var _progress = (progressState.percentage * 100);
            return _progress == 100
                ? Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Lottie.asset('assets/lottie/download_finished.json'),
                      SizedBox(height: 10.h),
                      SizedBox(
                        width: 94.w,
                        child: ElevatedButton(
                          onPressed: () => Get.back(),
                          child: Text('Done'),
                        ),
                      )
                    ],
                  )
                : SizedBox(
                    height: 0.15.sh,
                    child: Center(
                      child: CircularPercentIndicator(
                        radius: 200,
                        percent: progressState.percentage,
                        center: Text(_progress.toStringAsFixed(0)),
                      ),
                    ),
                  );
          },
          orElse: () => FlutterLogo(),
        );
      },
    );
  }
}

class _UploadForm extends StatefulWidget {
  const _UploadForm({
    Key? key,
    required this.user,
    required this.courseTitle,
    required this.isHomework,
  }) : super(key: key);

  final String courseTitle;
  final bool isHomework;
  final UserEntity user;

  @override
  _UploadFormState createState() => _UploadFormState();
}

class _UploadFormState extends State<_UploadForm> {
  var description = '';
  var title = '';

  UserEntity get user => widget.user;

  bool get isHomework => widget.isHomework;

  @override
  Widget build(BuildContext context) {
    final _isFileSelected =
        context.watch<HomeworkBloc>().state.filePath!.isNotEmpty;
    return BlocBuilder<UserAuthBloc, UserAuthState>(
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: _isFileSelected ? 0.02.sh : 0.08.sh),
                SvgPicture.asset(
                  'assets/svg/add_file.svg',
                  height: 0.3.sh,
                ),
                SizedBox(height: _isFileSelected ? 0.033.sh : 0.05.sh),
                TextField(
                  decoration: InputDecoration(
                    labelText: 'title*',
                  ),
                  onChanged: (val) => setState(() => title = val.trim()),
                ),
                SizedBox(height: 0.03.sh),
                TextField(
                  maxLines: null,
                  decoration: InputDecoration(
                    labelText: 'description',
                  ),
                  onChanged: (val) => setState(() => description = val.trim()),
                ),
                SizedBox(height: 0.03.sh),
                isHomework
                    ? _HomeworkBottomSelection(
                        title: title,
                        description: description,
                        user: user,
                        courseTitle: widget.courseTitle,
                      )
                    : _LecutreBottomSelection(
                        user: user,
                        courseTitle: widget.courseTitle,
                        title: title,
                        description: description,
                      ),
              ],
            ),
          ),
        );
      },
    );
  }
}

class _HomeworkBottomSelection extends StatefulWidget {
  const _HomeworkBottomSelection({
    Key? key,
    required this.user,
    required this.courseTitle,
    required this.title,
    required this.description,
  }) : super(key: key);

  final String courseTitle;
  final String description;
  final String title;
  final UserEntity user;

  @override
  __HomeworkBottomSelectionState createState() =>
      __HomeworkBottomSelectionState();
}

class __HomeworkBottomSelectionState extends State<_HomeworkBottomSelection> {
  DateTime? _dueDate;
  late String _formattedString;
  TimeOfDay _time = TimeOfDay.now().replacing(minute: 30);

  String get title => widget.title;

  void onTimeChanged(TimeOfDay newTime) {
    setState(() {});
    _time = newTime;
    _formattedString = _formattedString +
        ' ${_time.hour.toString().padLeft(2, '0')}:${_time.minute.toString().padLeft(2, '0')}:00';

    _dueDate = DateTime.parse(_formattedString);
  }

  @override
  Widget build(BuildContext context) {
    final _homeworkBloc = context.read<HomeworkBloc>();

    return BlocBuilder<HomeworkBloc, HomeworkState>(
      builder: (context, state) {
        final fileName = state.filePath!.split('/').last;
        final fileType = lookupMimeType(fileName);
        // print('endsWith --> ' + fileType.endsWith('pdf').toString());
        // print('mime -----> ' + lookupMimeType(fileName));
        return Column(
          children: [
            // SizedBox(height: 0.01.sh),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Text(
                  'Select a due date:',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            Container(
              child: DatePicker(
                DateTime.now(),
                dayTextStyle: TextStyle(
                  color: Colors.white,
                  fontSize: Dimen.dayTextSize,
                  fontWeight: FontWeight.w500,
                ),
                monthTextStyle: TextStyle(
                  color: Colors.white,
                  fontSize: Dimen.dayTextSize,
                  fontWeight: FontWeight.w500,
                ),
                dateTextStyle: TextStyle(
                  color: Colors.white,
                  fontSize: Dimen.dayTextSize,
                  fontWeight: FontWeight.w500,
                ),
                selectionColor: Color(0xff5F36DA),
                onDateChange: (date) {
                  _formattedString =
                      '${date.year}-${date.month.toString().padLeft(2, '0')}-${date.day.toString().padLeft(2, '0')}';
                  _dueDate = DateTime.parse(_formattedString);
                  Navigator.of(context).push(
                    showPicker(
                      context: context,
                      value: _time,
                      onChange: onTimeChanged,
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 0.03.sh),

            HomeworkSelectFileButton(
              user: widget.user,
              title: widget.title,
              courseTitle: widget.courseTitle,
              description: widget.description,
              dueDate: _dueDate,
            ),
            SizedBox(height: 0.03.sh),
            if (state.filePath!.isNotEmpty) ...[
              ListTile(
                tileColor: Color(0xff5F36DA),
                enabled: true,
                leading: Icon(
                  MdiIcons.file,
                  color: Colors.white,
                ),
                title: Text(
                  fileName,
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                trailing: IconButton(
                  onPressed: () => _homeworkBloc.add(HomeworkEvent.started()),
                  icon: Icon(
                    MdiIcons.closeBox,
                    color: Colors.white,
                  ),
                ),
              ),
              // SizedBox(height: 0.03.sh),
            ],
            SizedBox(height: 0.02.sh),
            HomeworkUploadButton(
              user: widget.user,
              title: widget.title,
              courseTitle: widget.courseTitle,
              description: widget.description,
              dueDate: _dueDate,
            ),
            SizedBox(height: 0.02.sh),
          ],
        );
      },
    );
  }
}

class HomeworkSelectFileButton extends StatelessWidget {
  const HomeworkSelectFileButton({
    Key? key,
    required this.user,
    required this.title,
    required this.courseTitle,
    required this.description,
    this.dueDate,
  }) : super(key: key);

  final String courseTitle;
  final String description;
  final DateTime? dueDate;
  final String title;
  final UserEntity user;

  @override
  Widget build(BuildContext context) {
    final homeworkBloc = context.watch<HomeworkBloc>();
    // final _isFileSelected = _homeworkBloc.state.filePath!.isNotEmpty;
    return SizedBox(
      height: 0.06.sh,
      width: 0.7.sw,
      child: ElevatedButton(
        onPressed: () {
          homeworkBloc.add(HomeworkEvent.selectFile());
        },
        child: Text(
          'select homework file',
          style: TextStyle(fontSize: 20.sp),
        ),
      ),
    );
  }
}

class HomeworkUploadButton extends StatelessWidget {
  const HomeworkUploadButton({
    Key? key,
    required this.user,
    required this.title,
    required this.courseTitle,
    required this.description,
    this.dueDate,
  }) : super(key: key);

  final String courseTitle;
  final String description;
  final DateTime? dueDate;
  final String title;
  final UserEntity user;

  @override
  Widget build(BuildContext context) {
    final _homeworkBloc = context.watch<HomeworkBloc>();
    final _isFileSelected = _homeworkBloc.state.filePath!.isNotEmpty;
    return SizedBox(
      height: 0.06.sh,
      width: 0.7.sw,
      child: ElevatedButton(
        onPressed: title.isEmpty
            ? null
            : () {
                _homeworkBloc.add(HomeworkEvent.uploadHomework(
                  user: user as UserModel,
                  title: title,
                  courseTitle: courseTitle,
                  description: description,
                  filePath: _homeworkBloc.state.filePath!,
                  dueDate: dueDate!.millisecondsSinceEpoch,
                ));
              },
        child: Text(
          'upload homework',
          style: TextStyle(fontSize: 20.sp),
        ),
      ),
    );
  }
}

class _LecutreBottomSelection extends StatelessWidget {
  const _LecutreBottomSelection({
    Key? key,
    required this.user,
    required this.title,
    required this.description,
    required this.courseTitle,
  }) : super(key: key);

  final String courseTitle;
  final String description;
  final String title;
  final UserEntity user;

  @override
  Widget build(BuildContext context) {
    final lectureBloc = context.read<LectureBloc>();
    return BlocBuilder<LectureBloc, LectureState>(
      builder: (context, state) {
        if (state.filePath.isEmpty) {
          return SizedBox(
            height: 0.06.sh,
            width: 0.7.sw,
            child: ElevatedButton(
              onPressed: () {
                lectureBloc.add(LectureEvent.selectFile());
              },
              child: Text('Select Lecture'),
            ),
          );
        } else {
          final fileName = state.filePath.split('/').last;
          final fileType = lookupMimeType(fileName);
          // print('endsWith --> ' + fileType.endsWith('pdf').toString());
          // print('mime -----> ' + lookupMimeType(fileName));
          return Column(
            children: [
              ListTile(
                enabled: true,
                leading: Icon(MdiIcons.filePdf),
                title: Text(fileName),
                trailing: IconButton(
                  onPressed: () =>
                      context.read<LectureBloc>().add(LectureEvent.started()),
                  icon: Icon(MdiIcons.closeBox),
                ),
              ),
              SizedBox(height: 24.h),
              SizedBox(
                height: 0.06.sh,
                width: 0.7.sw,
                child: ElevatedButton(
                  onPressed: title.isEmpty
                      ? null
                      : () {
                          lectureBloc.add(
                            LectureEvent.uploadLecture(
                              user: user as UserModel,
                              courseTitle: courseTitle,
                              title: title,
                              description: description,
                            ),
                          );
                        },
                  child: Text('Upload Lecture'),
                ),
              ),
            ],
          );
        }
      },
    );
  }
}
