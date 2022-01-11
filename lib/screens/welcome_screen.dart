import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        top: false,
        child: Container(
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(color: Color(0xFF141414)),
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: ListView(
              children: [
                const SizedBox(
                  height: 50.0,
                ),
                SvgPicture.asset(
                  'assets/images/home.svg',
                  height: 300.0,
                ),
                const SizedBox(
                  height: 50.0,
                ),
                Text(
                  "Enterprise team \n collaboration.",
                  style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 30,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi lobortis velit placerat iaculis molestie.",
                  style: GoogleFonts.poppins(
                    color: Colors.grey,
                    fontWeight: FontWeight.w300,
                    fontSize: 16,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 70.0,
                ),
                Container(
                  height: 60.0,
                  margin: const EdgeInsets.only(left: 25.0, right: 25.0),
                  decoration: BoxDecoration(
                    color: const Color(0xFF3A3940),
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: Row(
                    children: [
                      InkWell(
                        onTap: () {},
                        child: Container(
                          height: 60.0,
                          width: MediaQuery.of(context).size.width * 0.40,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          child: Center(
                            child: Text(
                              "Register",
                              style: GoogleFonts.poppins(
                                color: Colors.black,
                                fontWeight: FontWeight.w600,
                                fontSize: 17.0,
                              ),
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: SizedBox(
                          height: 60.0,
                          width: MediaQuery.of(context).size.width * 0.40,
                          child: Center(
                            child: Text(
                              "Sign In",
                              style: GoogleFonts.poppins(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                                fontSize: 17.0,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
