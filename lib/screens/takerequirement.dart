import 'package:college_notice/components/customtext.dart';
import 'package:college_notice/provider/infoprovider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class Takerequirement extends StatefulWidget {
  const Takerequirement({super.key});

  @override
  State<Takerequirement> createState() => _TakerequirementState();
}

class _TakerequirementState extends State<Takerequirement> {
  TextEditingController prn = TextEditingController();
  TextEditingController year = TextEditingController();
  TextEditingController division = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: ConstrainedBox(
          constraints: BoxConstraints(
              minWidth: MediaQuery.of(context).size.width,
              minHeight: MediaQuery.of(context).size.height),
          child: IntrinsicHeight(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 80,
                  ),
                  Text(
                    "Fill your Information",
                    style: GoogleFonts.roboto(
                        wordSpacing: 2,
                        fontWeight: FontWeight.bold,
                        fontSize: 29),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "*Note filling invalid information can lead to wrong or no notification",
                    style: GoogleFonts.roboto(
                        wordSpacing: 1,
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                        color: Colors.redAccent),
                  ),
                  SizedBox(
                    height: 29,
                  ),
                  Text(
                    "Prn or College Roll number",
                    style: GoogleFonts.roboto(
                        wordSpacing: 2,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Uploadtxt(
                    controller: prn,
                    lable: "Example: 121B1B026",
                    icon: Icon(Icons.person),
                  ),
                  SizedBox(
                    height: 19,
                  ),
                  Text(
                    "Division",
                    style: GoogleFonts.roboto(
                        wordSpacing: 2,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Uploadtxt(
                    controller: division,
                    lable: "Example: A",
                    icon: Icon(Icons.abc),
                  ),
                  SizedBox(
                    height: 19,
                  ),
                  Text(
                    "Year",
                    style: GoogleFonts.roboto(
                        wordSpacing: 2,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Uploadtxt(
                    controller: year,
                    lable: "Example: 1,2,3,4",
                    icon: Icon(Icons.format_list_numbered),
                  ),
                  Spacer(),
                  GestureDetector(
                    onTap: () {
                      Provider.of<Infoprovider>(context, listen: false)
                          .setprn(prn.text);
                      Provider.of<Infoprovider>(context, listen: false)
                          .setyear(year.text);
                      Provider.of<Infoprovider>(context, listen: false)
                          .setprn(division.text);

                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (context) => Takerequirement()));
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 8.0, horizontal: 16),
                      child: Container(
                        height: 56,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Color.fromARGB(255, 1, 158, 231)),
                        child: Center(
                          child: Text(
                            "Next",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
