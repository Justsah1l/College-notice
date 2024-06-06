import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: camel_case_types
class Users extends StatelessWidget {
  const Users({Key? key});

  @override
  Widget build(BuildContext context) {
    var green;
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 255, 255, 255),
              Color.fromARGB(255, 255, 255, 255)
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Choose Your Profile',
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              const SizedBox(height: 20),
              Image.asset(
                'assets/images/mystud.jpg',
                height: 170,
              ),
              ElevatedButton(
                onPressed: () {
                  // Navigator.pushNamed(context,
                  //     MyRoutes.studlogin); // Navigate to student screen
                },
                style: ElevatedButton.styleFrom(
                  elevation: 8,
                  backgroundColor: const Color.fromARGB(
                      255, 234, 227, 0), // Change to the desired green color
                ),
                child: const Text(
                  'Student',
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
              ),
              const SizedBox(height: 20),
              Image.asset(
                'assets/images/myteacher.png',
                height: 200,
              ),
              ElevatedButton(
                onPressed: () {
                  // Navigator.pushNamed(
                  //     context, MyRoutes.teacherlogin); // Navigate to admin screen
                },
                style: ElevatedButton.styleFrom(
                  elevation: 8,
                  backgroundColor: const Color.fromARGB(
                      255, 234, 227, 0), // Change to the desired green color.
                ),
                child: const Text(
                  'Faculty',
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
              ),
            ],
          ),
        ),
      ),

      // floatingActionButton: FloatingActionButton(
      //   onPressed: (){
      //             Navigator.pushNamed(
      //                 context, MyRoutes.chatbot); // Navigate to admin screen
      //           },
      //   backgroundColor: Colors.green, // Use the button color from theme
      //   child: const Icon(Icons.chat),
      // ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
    );
  }
}
