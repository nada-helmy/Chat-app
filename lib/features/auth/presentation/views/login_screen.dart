import 'package:flutter/material.dart';
import 'package:mini_whats_app/features/auth/presentation/views/widgets/login_body.dart';


class LoginScreen extends StatelessWidget {
  static const String routeName = 'login';

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body:SingleChildScrollView(
        child: LoginBody()
      )
    );
  }
}
