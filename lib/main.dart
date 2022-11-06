import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'change-course.dart';
import 'my_courses.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create:(_)=>ChangeCourse(),
    child: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        body: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 70, left: 20, right: 20),
              width: double.maxFinite,
              height: 70,
              decoration: BoxDecoration(
                color: Color(0xFF5C67C1),
                borderRadius: BorderRadius.circular(20)
              ),
              child:  Center(
                child: Text(
                  "We are learning" +Provider.of<ChangeCourse>(context).subject,
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white
                  ),
                ),
              ),
            ),
            MyCourses(course: "GetX",),
            MyCourses(course: "Bloc",),
            MyCourses(course: "Cubit",),
          ],
        ),
      ),
    );
  }
}

