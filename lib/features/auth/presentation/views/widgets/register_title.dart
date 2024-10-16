import 'package:flutter/material.dart';
import 'package:mini_whats_app/core/themes/my_colors.dart';

class RegisterTitle extends StatelessWidget {
  const RegisterTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Text('Register to New account',
      textAlign: TextAlign.center,
      style: TextStyle(
          fontSize: 35,
          fontWeight: FontWeight.bold,
          color:   Mycolors.black
      ),);
  }
}
