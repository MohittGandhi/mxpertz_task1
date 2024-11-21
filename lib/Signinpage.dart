import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class Signin extends StatefulWidget {
  const Signin({Key? key}) : super(key: key);

  @override
  State<Signin> createState() => _SigninState();
}

class _SigninState extends State<Signin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Container(
            width: 45,
            height: 45,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(50),
                color: Color(0xff1A9EB7).withOpacity(0.10)
            ),
            child: Icon(
              Icons.arrow_back_ios_rounded,
              color: Color(0xff1A9EB7),
            ),
          ),
        ),
        elevation: 0,
      ),
      body: Container(
        margin: EdgeInsets.only(left: 25, right: 25),
        alignment: Alignment.center,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 25,
              ),
              Text(
                "Create Account",
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w700,
                  fontSize: 20,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Sign up",
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                ),
              ),
              SizedBox(height: 50,),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: SizedBox(
                  width: double.infinity,
                  child: TextField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      hintText: "Email",
                      hintStyle: GoogleFonts.poppins(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff000000).withOpacity(0.30)),
                      border: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Color(0xffF7F8F8)
                          ),
                          borderRadius: BorderRadius.circular(10)),
                      prefixIcon: Icon(
                        Icons.email_outlined,
                        color: Color(0xff7B6F72).withOpacity(0.40),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: SizedBox(
                  width: double.infinity,
                  child: TextField(
                    keyboardType: TextInputType.visiblePassword,
                    decoration: InputDecoration(
                      hintText: "Special Charechters",
                      hintStyle: GoogleFonts.poppins(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff000000).withOpacity(0.30)),
                      border: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Color(0xffF7F8F8)
                          ),
                          borderRadius: BorderRadius.circular(10)),
                      prefixIcon: Icon(
                        Icons.lock_outline,
                        color: Color(0xff7B6F72).withOpacity(0.40),
                      ),
                      suffixIcon: Icon(
                        Icons.remove_red_eye_outlined,
                        color: Color(0xff7B6F72).withOpacity(0.40),
                      )
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: SizedBox(
                  width: double.infinity,
                  child: TextField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      hintText: "Repeat password",
                      hintStyle: GoogleFonts.poppins(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff000000).withOpacity(0.30)),
                      border: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Color(0xffF7F8F8)
                          ),
                          borderRadius: BorderRadius.circular(10)),
                      prefixIcon: Icon(
                        Icons.lock_outline,
                        color: Color(0xff7B6F72).withOpacity(0.40),
                      ),
                        suffixIcon: Icon(
                          Icons.remove_red_eye_outlined,
                          color: Color(0xff7B6F72).withOpacity(0.40),
                        )
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: IntlPhoneField(
                  decoration: InputDecoration(
                    labelText: 'Mobile Number',
                    labelStyle: GoogleFonts.poppins(
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      color: Color(0xff000000).withOpacity(0.30)
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        width: 0,
                        color: Color(0xffF7F8F8)
                      ),
                    ),
                  ),
                  initialCountryCode: 'IN',
                ),
              ),
              SizedBox(height: 20,),
              SizedBox(
                width: double.infinity,
                height: 60,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xff1A9EB7),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30))),
                    onPressed: () {},
                    child: Text("Next",style: GoogleFonts.poppins(
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                    ),)),
              ),
              SizedBox(height: 30,),
              Text(
                "Or Continue With",
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w400,
                  fontSize: 12,
                ),
              ),
              SizedBox(height: 40,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InkWell(

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
                              "assets/apple.png",
                              width: 20,
                              height: 20,
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Apple",
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
            ],
          ),
        ),
      ),
    );
  }
}