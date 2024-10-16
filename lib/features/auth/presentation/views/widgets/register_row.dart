import 'package:flutter/material.dart';
import 'package:mini_whats_app/core/themes/my_colors.dart';
import 'package:mini_whats_app/features/auth/presentation/views/register_screen.dart';

class RegisterRow extends StatelessWidget {
  const RegisterRow({super.key});

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
            Navigator.of(context).pushNamed(RegisterScreen.routeName);
          },
          child: Text('Register here',
              style: TextStyle(
                  fontSize: 22,
                  color: Mycolors.primary
              )),
        ),
      ],
    );
  }
}
