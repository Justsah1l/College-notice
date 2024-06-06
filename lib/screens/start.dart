import 'package:college_notice/components/optionskit.dart';
import 'package:college_notice/screens/requirementalert.dart';
import 'package:flutter/material.dart';

class Startscreen extends StatefulWidget {
  const Startscreen({super.key});

  @override
  State<Startscreen> createState() => _StartscreenState();
}

class _StartscreenState extends State<Startscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 245, 245, 245),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 90,
            ),
            Text(
              "Get notified about important\nstuff",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "We'll notify you when",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 17.0, vertical: 15),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Optionscreen(
                      icon: Icons.task_outlined,
                      text: "A faculty wants to assign you a task",
                    ),
                    Optionscreen(
                      icon: Icons.bookmark_outline,
                      text: "A assignment is assigned to you",
                    ),
                    Optionscreen(
                      icon: Icons.warning_amber_outlined,
                      text: "There an emergency",
                    ),
                    Optionscreen(
                      icon: Icons.calendar_month_outlined,
                      text: "There is a change in schedule",
                    )
                  ],
                ),
              ),
            ),
            Spacer(),
            SizedBox(
              width: 16,
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (context) => Requirementalert()));
              },
              child: Container(
                height: 56,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.black),
                child: Center(
                  child: Text(
                    "Next",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 26,
            )
          ],
        ),
      ),
    );
  }
}
