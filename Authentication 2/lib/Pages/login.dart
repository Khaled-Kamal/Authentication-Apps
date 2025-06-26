import 'package:auth_app/Models/logoText.dart';
import 'package:auth_app/Pages/register.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController email = TextEditingController();
    return Scaffold(
      body: Stack(
        children: [
          Center(
            child: Column(
              children: [
                SizedBox(height: 160),
                LogoText(),
                SizedBox(height: 11),
                Text(
                  'Welcome back!',
                  style: GoogleFonts.roboto(
                    textStyle: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                      color: Color(0xff000000),
                    ),
                  ),
                ),
                SizedBox(height: 9),
                Text(
                  'Log in to existing LOGO account',
                  style: GoogleFonts.roboto(
                    textStyle: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff515151),
                    ),
                  ),
                ),
                SizedBox(height: 42),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 17),
                  child: TextField(
                    controller: email,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Color(0xffF2F2F2),
                      hintText: 'Username',
                      prefixIcon: Icon(Icons.person_outline),
                      border: OutlineInputBorder(),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xff8EDDFF)),
                      ),
                    ),
                  ),
                ),

                SizedBox(height: 26),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 17),
                  child: TextField(
                    controller: email,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Color(0xffF2F2F2),
                      hintText: 'Password',
                      prefixIcon: Icon(Icons.lock_outline),
                      border: OutlineInputBorder(),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xff8EDDFF)),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 7),
                Padding(
                  padding: const EdgeInsets.only(left: 240),
                  child: Text(
                    'Forgot Password?',
                    style: GoogleFonts.roboto(
                      textStyle: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                      ),
                    ),
                  ),
                ),

                SizedBox(height: 40),

                Container(
                  width: 199,
                  height: 53,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 5,
                        spreadRadius: 1,
                      ),
                    ],
                    borderRadius: BorderRadius.circular(5),
                    gradient: LinearGradient(
                      colors: [Color(0xFF8EDDFF), Color(0xff769DAD)],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
                  ),
                  child: Center(
                    child: Text(
                      'LOG IN',
                      style: GoogleFonts.roboto(
                        textStyle: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 16,
                          color: Color(0xffFFFFFF),
                        ),
                      ),
                    ),
                  ),
                ),

                SizedBox(height: 17),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Don’t have an account?',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => RegisterPage(),
                          ),
                        );
                      },
                      child: Text(
                        ' Sign Up',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),

          Positioned(
            right: 10,
            top: 0,
            child: SvgPicture.asset('assets/images/Rectangle 12.svg'),
          ),
          Positioned(
            left: 0,
            top: 0,
            child: SvgPicture.asset('assets/images/Rectangle 11.svg'),
          ),
        ],
      ),
    );
  }
}
