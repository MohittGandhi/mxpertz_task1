/*
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:mxpertz_task1/onboarding_provider.dart';
import 'package:mxpertz_task1/onboarding_Screen2.dart';

class OnboardingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Shader linearGradient = LinearGradient(
      colors: <Color>[Color(0xffFF7D00), Color(0xffFFB400)],
    ).createShader(Rect.fromLTWH(0.0,100.0, 200.0,0.0));
    final onboardingProvider = Provider.of<OnboardingProvider>(context);

    return Scaffold(
      backgroundColor: Color(0xFF1A9EB7), // Replace with your desired color.
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // Illustration
            Expanded(
              flex: 3,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Image.asset(
                  'assets/new.png',
                  fit: BoxFit.contain,
                ),
              ),
            ),
            // Title and Description
            Container(
              width: double.infinity,
              height: 310,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius:BorderRadius.vertical(top: Radius.circular(30),),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'ONLINE PAYMENT',
                    style: GoogleFonts.poppins(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      color: Color(0xffFFAF00),
                    ),
                  ),
                  SizedBox(height: 30),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. '
                          'Praesent ullamcorper.',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.poppins(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff8B8B8B),
                      ),
                    ),
                  ),
                  SizedBox(height: 50,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      InkWell(
                        child: Text(
                          'Skip>>',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            foreground: Paint()..shader = linearGradient,
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 110,
                      ),
                      InkWell(
                        onTap: Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => OnboardingScreen2()),
                        ),
                          child: Image.asset("assets/arrow.png",width: 70,height: 100,))
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
*/
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:mxpertz_task1/onboarding_provider.dart';
import 'package:mxpertz_task1/onboarding_Screen2.dart';

import 'login_screen.dart';

class OnboardingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Shader linearGradient = LinearGradient(
      colors: <Color>[Color(0xffFF7D00), Color(0xffFFB400)],
    ).createShader(Rect.fromLTWH(0.0, 100.0, 200.0, 0.0));
    final onboardingProvider = Provider.of<OnboardingProvider>(context);

    return Scaffold(
      backgroundColor: Color(0xFF1A9EB7), // Replace with your desired color.
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // Illustration
            Expanded(
              flex: 3,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Image.asset(
                  'assets/new.png',
                  fit: BoxFit.contain,
                ),
              ),
            ),
            // Title and Description
            Container(
              width: double.infinity,
              height: 310,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(30),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'ONLINE PAYMENT',
                    style: GoogleFonts.poppins(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      color: Color(0xffFFAF00),
                    ),
                  ),
                  SizedBox(height: 30),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. '
                          'Praesent ullamcorper.',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.poppins(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff8B8B8B),
                      ),
                    ),
                  ),
                  SizedBox(height: 50),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      InkWell(
                        onTap:(){
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => LoginScreen(),
                            ),
                          );
                        },
                        child: Text(
                          'Skip>>',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            foreground: Paint()..shader = linearGradient,
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 110,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => OnboardingScreen2(),
                            ),
                          );
                        },
                        child: Image.asset(
                          "assets/arrow.png",
                          width: 70,
                          height: 100,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
