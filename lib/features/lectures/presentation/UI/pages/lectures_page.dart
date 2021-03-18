import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:online_learning/features/lectures/presentation/UI/pages/lecture_form_page.dart';
import 'package:online_learning/features/lectures/presentation/UI/widgets/lecture_card.dart';
import 'package:online_learning/features/lectures/presentation/bloc/lecture_bloc.dart';
import 'package:online_learning/features/user/data/models/user_mode.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LecturesPage extends StatefulWidget {
  final String courseTitle;

  const LecturesPage({Key key, @required this.courseTitle}) : super(key: key);
  @override
  _LecturesPageState createState() => _LecturesPageState();
}

class _LecturesPageState extends State<LecturesPage> {
  @override
  Widget build(BuildContext context) {
    // context.read<LectureBloc>().add(
    //     LectureEvent.getAllLecturesByCourse(courseTitle: widget.courseTitle));\
    context.read<LectureBloc>().add(
          LectureEvent.getAllSubmittedUsers(
            userId: '12',
            courseTitle: widget.courseTitle,
            lectureTitle: 'intoud',
          ),
        );

    return SafeArea(
      child: Scaffold(
        body: BlocBuilder<LectureBloc, LectureState>(
          builder: (context, state) {
            return state.maybeMap(
              allLecturesLoaded: (lecturesState) {
                final lectures = lecturesState.lecturesEntities;
                final subimt = lecturesState.submittedUsers;
                // final lectures = [
                //   LectureEntity(
                //     fileUrl: 'url',
                //     title: 'new title',
                //     description: 'desc',
                //   ),
                //   LectureEntity(
                //     fileUrl: 'url2',
                //     title: 'new title2',
                //     description: 'desc2',
                //   ),
                // ];
                return Column(
                  children: [
                    Expanded(
                      child: ListView.builder(
                        itemCount: lectures.length,
                        itemBuilder: (context, index) => Column(
                          children: [
                            Checkbox(
                              value: subimt[index].isEmpty,
                              onChanged: (val) {},
                            ),
                            LectureCard(
                              lectureTitle: lectures[index].title,
                              courseTitle: widget.courseTitle,
                            ),
                          ],
                        ),
                      ),
                    ),
                    SleekCircularSlider(
                      initialValue: 2,
                      onChange: (val) {},
                      appearance: CircularSliderAppearance(
                        size: 80.h,
                        customColors: CustomSliderColors(
                          progressBarColor: Colors.orange,
                          dotColor: Colors.transparent,
                        ),
                      ),
                    ),
                  ],
                );
              },
              orElse: () => Text('orElse'),
            );
          },
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.picture_as_pdf),
          onPressed: () => Get.to(
            () => LectureFormPage(
              user: UserModel(id: '12'),
              courseTitle: widget.courseTitle,
            ),
          ),
        ),
      ),
    );
  }
}
