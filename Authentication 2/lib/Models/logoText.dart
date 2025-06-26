import 'package:auth_app/Models/LinearGradient.dart';
import 'package:flutter/material.dart';

class LogoText extends StatelessWidget {
  const LogoText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GradientText (
      "LOGO",
       gradient: const LinearGradient(
      colors: [
        Color(0xff91DDFF), 
        Color(0xff7A9EAE), 
      ],
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
    ),
      style: TextStyle(
        fontSize: 85,
        fontWeight: FontWeight.w600,
        fontFamily: 'Prime',
      ),
    );
  }
}
