import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart'; // في حال هتستخدم SVG icons

class LoginFields extends StatelessWidget {
  const LoginFields({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: Column(
        children: [
          // Username Field
          Container(
            decoration: BoxDecoration(
              color: const Color(0xFFF2F2F2), // خلفية رمادية فاتحة
              borderRadius: BorderRadius.circular(12),
            ),
            child: const TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.person_outline, color: Colors.grey),
                hintText: 'Username',
                border: InputBorder.none,
              ),
            ),
          ),
          const SizedBox(height: 16),

          // Password Field
          Container(
            decoration: BoxDecoration(
              color: const Color(0xFFF2F2F2),
              borderRadius: BorderRadius.circular(12),
            ),
            child: const TextField(
              obscureText: true,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.lock_outline, color: Colors.grey),
                hintText: 'Password',
                border: InputBorder.none,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
