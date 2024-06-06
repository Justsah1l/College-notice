import 'package:college_notice/screens/takerequirement.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class Requirementalert extends StatefulWidget {
  const Requirementalert({super.key});

  @override
  State<Requirementalert> createState() => _RequirementalertState();
}

class _RequirementalertState extends State<Requirementalert> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 150,
          ),
          Image.asset(
            "assets/images/userstanding.png",
            height: 270,
            fit: BoxFit.fill,
          ),
          SizedBox(
            height: 50,
          ),
          Text(
            "But First we need some of your",
            style: GoogleFonts.bebasNeue(
                letterSpacing: 1,
                wordSpacing: 2,
                fontWeight: FontWeight.bold,
                fontSize: 26),
          ),
          Text(
            "Information",
            style: GoogleFonts.bebasNeue(
                letterSpacing: 1,
                wordSpacing: 2,
                fontWeight: FontWeight.bold,
                fontSize: 26),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Text(
              "Information like your College Roll number, division , current year and all required valid information",
              style: TextStyle(color: Colors.grey, fontSize: 12),
            ),
          ),
          Spacer(),
          GestureDetector(
            onTap: () {
              Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => Takerequirement()));
            },
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16),
              child: Container(
                height: 56,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Color.fromARGB(255, 1, 158, 231)),
                child: Center(
                  child: Text(
                    "Next",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 40,
          )
        ],
      ),
    );
  }
}
