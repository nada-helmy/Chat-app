import 'package:flutter/material.dart';
import 'package:mini_whats_app/features/auth/presentation/views/widgets/register_body.dart';

class RegisterScreen extends StatelessWidget {
  static const String routeName = 'register';
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:SingleChildScrollView(
            child: RegisterBody()
        )
    );
  }
}
