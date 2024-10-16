import 'package:flutter/material.dart';
import 'package:mini_whats_app/core/themes/my_colors.dart';

class LoginTitle extends StatelessWidget {
  const LoginTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Text('Log in to your account',
        textAlign: TextAlign.center,
    style: TextStyle(
      fontSize: 35,
      fontWeight: FontWeight.bold,
      color:   Mycolors.black    
    ),);
  }
}
