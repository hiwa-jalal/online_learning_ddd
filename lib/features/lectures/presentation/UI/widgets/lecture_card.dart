import 'package:flutter/material.dart';

class LectureCard extends StatelessWidget {
  final String courseTitle;

  const LectureCard({
    Key key,
    @required this.courseTitle,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      childrenPadding: EdgeInsets.only(bottom: 8.0, left: 8.0, right: 8.0),
      title: Text(courseTitle),
      children: [
        SelectableText(
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque quis congue metus, ac tempus eros. Nunc tincidunt eros arcu, ac dictum nulla convallis sed. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus commodo pretium leo, ac dictum lacus pellentesque quis. Fusce suscipit, orci eget venenatis dignissim, purus turpis imperdiet velit, vitae ullamcorper lectus libero eget eros.',
        ),
        CheckboxListTile(
          secondary: Icon(Icons.message),
          title: Text('pdf file'),
          value: true,
          onChanged: (val) {},
        )
      ],
    );
  }
}
