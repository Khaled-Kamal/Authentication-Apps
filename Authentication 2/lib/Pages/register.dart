import 'package:auth_app/Pages/login.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController email = TextEditingController();

    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 140),
            Text(
              'Let’s Get Started!',
              style: GoogleFonts.roboto(
                textStyle: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 24,
                  color: Colors.black,
                ),
              ),
            ),
            SizedBox(height: 3),
            Text(
              'Create an account on MNZL to get all features',
              style: GoogleFonts.roboto(
                textStyle: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                  color: Color(0xff515151),
                ),
              ),
            ),

            SizedBox(height: 42),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 26),
              child: TextField(
                controller: email,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color(0xffF2F2F2),
                  hintText: 'First Name',
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
              padding: const EdgeInsets.symmetric(horizontal: 26),
              child: TextField(
                controller: email,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color(0xffF2F2F2),
                  hintText: 'Last Name',
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
            SizedBox(height: 26,),
             Padding(
              padding: const EdgeInsets.symmetric(horizontal: 26),
              child: TextField(
                controller: email,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color(0xffF2F2F2),
                  hintText: 'username',
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
            SizedBox(height: 26,),
             Padding(
              padding: const EdgeInsets.symmetric(horizontal: 26),
              child: TextField(
                controller: email,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color(0xffF2F2F2),
                  hintText: 'Email',
                  prefixIcon: Icon(Icons.email_outlined),
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
            SizedBox(height: 26,),
             Padding(
              padding: const EdgeInsets.symmetric(horizontal: 26),
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
             SizedBox(height: 26,),
             Padding(
              padding: const EdgeInsets.symmetric(horizontal: 26),
              child: TextField(
                controller: email,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color(0xffF2F2F2),
                  hintText: ' Confirm Password',
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
                      'CREATE',
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
                      'Already have an account? ',
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
                            builder: (context) => LoginPage(),
                          ),
                        );
                      },
                      child: Text(
                        ' Login here',
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
    );
  }
}
