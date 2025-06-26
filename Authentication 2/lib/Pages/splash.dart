import 'package:auth_app/Models/logoText.dart';
import 'package:auth_app/Pages/login.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const LoginPage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(height: 150),
                const LogoText(),
                SvgPicture.asset('assets/images/chat.svg', width: 350),
                const SizedBox(height: 20),
                const Text(
                  'LOREM IPSUM',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
                ),
                const SizedBox(height: 15),
                const Padding(
                  padding: EdgeInsets.only(left: 0),
                  child: Text(
                    'Lorem ipsum is a dummy text',
                    style: TextStyle(
                      color: Color(0xff515151),
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 0),
                  child: Text(
                    'used as placeholder',
                    style: TextStyle(
                      color: Color(0xff515151),
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 0,
            left: 55,
            child: SvgPicture.asset('assets/images/Vector.svg'),
          ),
          Positioned(
            top: 320,
            left: 30,
            child: SvgPicture.asset('assets/images/Group.svg'),
          ),
          Positioned(
            top: 0,
            bottom: 600,
            left: 116,
            child: SvgPicture.asset('assets/images/Vector.svg'),
          ),
          Positioned(
            top: 0,
            bottom: 300,
            left: 90,
            child: SvgPicture.asset('assets/images/Group.svg'),
          ),
        ],
      ),
    );
  }
}
