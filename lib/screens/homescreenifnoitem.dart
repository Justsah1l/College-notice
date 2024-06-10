import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Ifnoitem extends StatelessWidget {
  const Ifnoitem({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Center(
          child: Image.asset("assets/images/Illustration.png"),
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          "No notifications yet",
          style: GoogleFonts.montserrat(
              fontSize: 24, fontWeight: FontWeight.bold, letterSpacing: 0.2),
        ),
        SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 19),
          child: Text(
            "Your notification will appear here once",
            style: GoogleFonts.montserrat(
                fontSize: 14, fontWeight: FontWeight.bold, letterSpacing: 0.2),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 19),
          child: Text(
            "you've recieved them",
            style: GoogleFonts.montserrat(
                fontSize: 14, fontWeight: FontWeight.bold, letterSpacing: 0.2),
          ),
        )
      ],
    );
  }
}
