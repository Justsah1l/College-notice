import 'package:college_notice/screens/homescreen.dart';
import 'package:college_notice/screens/requirementalert.dart';
import 'package:college_notice/screens/start.dart';
import 'package:college_notice/screens/student.dart';
import 'package:college_notice/screens/studlogin.dart';
import 'package:college_notice/screens/users.dart';
import 'package:flutter/material.dart';
import 'package:college_notice/screens/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: StudLogin(),

     
    );
  }
}
