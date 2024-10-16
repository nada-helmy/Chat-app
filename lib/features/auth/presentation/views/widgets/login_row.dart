import 'package:flutter/material.dart';
import 'package:mini_whats_app/core/themes/my_colors.dart';
import 'package:mini_whats_app/features/auth/presentation/views/login_screen.dart';

class LoginRow extends StatelessWidget {
  const LoginRow({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Row(
      children: [
        Text('Don’t have an account?',
            style: TextStyle(
                fontSize: 22,
                color: Mycolors.black
            )),
        SizedBox(
          width: width*.04,
        ),

        InkWell(
          onTap: () {
            Navigator.of(context).pushNamed(LoginScreen.routeName);
          },
          child: Text('Login here',
              style: TextStyle(
                  fontSize: 22,
                  color: Mycolors.primary
              )),
        ),
      ],
    );
  }
}
