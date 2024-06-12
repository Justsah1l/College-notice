// routes.dart
import 'package:flutter/material.dart';
import 'package:college_notice/screens/homescreen.dart';
import 'package:college_notice/screens/start.dart';
import 'package:college_notice/screens/student.dart';
import 'package:college_notice/screens/studlogin.dart';
import 'package:college_notice/screens/users.dart';

class MyRoutes {
  static const String home = '/home';
  static const String startscreen = '/startscreen';
  static const String student = '/student';
  static const String studLogin = '/studlogin';
  static const String users = '/users';

  static Map<String, WidgetBuilder> routes = {
    startscreen: (context) => const Startscreen(),
    home: (context) => const Homescreen(),
    // start: (context) => StartScreen(),
    // student: (context) => StudentScreen(),
    studLogin: (context) => StudLogin(),
    users: (context) => const Users(),
  };
}
