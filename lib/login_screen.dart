import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mxpertz_task1/Signinpage.dart';

import 'HomeScreen.dart';
import 'auth_service.dart';
import 'otpverify.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final AuthService _authService = AuthService();
  final ValueNotifier<String?> _userNameNotifier = ValueNotifier<String?>(null);

  void _signIn() async {
    final user = await _authService.signInWithGoogle();
    _userNameNotifier.value = user?.displayName;
    if (user != null) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => HomePage()),
      );
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 100,
                ),
                Image.asset(
                  "assets/Luxesoft.png",
                  width: 150,
                  height: 80,
                ),
                SizedBox(
                  height: 40,
                ),
                Text(
                  "Welcome Back!",
                  style: GoogleFonts.poppins(
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  "Login to Continue",
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: SizedBox(
                    width: double.infinity,
                    child: TextField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        hintText: "Phone Number",
                        hintStyle: GoogleFonts.poppins(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff000000).withOpacity(0.30)),
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(
                          Icons.send_to_mobile,
                          color: Color(0xff7B6F72).withOpacity(0.40),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                SizedBox(
                  width: 315,
                  height: 60,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xff1A9EB7),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50))),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => otpverify()),
                        );
                      },
                      child: Text(
                        "GET OTP",
                        style: GoogleFonts.poppins(
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                            color: Colors.white),
                      )),
                ),
                SizedBox(
                  height: 80,
                ),
                Text(
                  "Or Continue With",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InkWell(
                      onTap: _signIn,  // Trigger Google sign-in
                      child: Card(
                        color: Colors.white,
                        elevation: 3,
                        child: Container(
                          width: 100,
                          height: 56,
                          child: Center(
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 5,
                                ),
                                Image.asset(
                                  "assets/Google@3x.png",
                                  width: 20,
                                  height: 20,
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "Google",
                                  style: GoogleFonts.poppins(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Card(
                      color: Colors.white,
                      elevation: 3,
                      child: Container(
                        width: 100,
                        height: 56,
                        child: Center(
                          child: Column(
                            children: [
                              SizedBox(
                                height: 5,
                              ),
                              Image.asset(
                                "assets/facebook.png",
                                width: 20,
                                height: 20,
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "facebook",
                                style: GoogleFonts.poppins(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 50,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don't have an account?",
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                          color: Color(0xff878787)),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(builder: (context) => Signin()),
                        );
                      },
                      child: Text(
                        "SIGN UP",
                        style: GoogleFonts.poppins(
                            decoration: TextDecoration.underline,
                            fontWeight: FontWeight.w700,
                            fontSize: 18,
                            color: Color(0xFF1A9EB7)),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}



