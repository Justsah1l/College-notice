import 'package:college_notice/screens/homescreenifnoti.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 239, 237, 237),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 239, 237, 237),
        centerTitle: true,
        title: Text(
          "Notifications",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.person_outlined,
                size: 29,
              ))
        ],
      ),
      body: Ifnotification(),
    );
  }
}
