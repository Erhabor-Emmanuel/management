import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'change-course.dart';

class MyCourses extends StatelessWidget {
  final String course;
  const MyCourses({Key? key, required this.course}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Provider.of<ChangeCourse>(context,listen: false).changeSubjects(course);
      },
      child: Container(
        margin: const EdgeInsets.only(top: 70, left: 20, right: 20),
        width: double.maxFinite,
        height: 70,
        decoration: BoxDecoration(
            color: Color(0xFF5C67C1),
            borderRadius: BorderRadius.circular(20)
        ),
        child: Center(
          child: Text(
            course,
            style: TextStyle(
                fontSize: 20,
                color: Colors.white
            ),
          ),
        ),
      ),
    );
  }
}
