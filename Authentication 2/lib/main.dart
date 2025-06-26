import 'package:auth_app/Pages/splash.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const AuthenticationAPP());
}

class AuthenticationAPP extends StatelessWidget {
  const AuthenticationAPP({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: SplashPage());
  }
}
