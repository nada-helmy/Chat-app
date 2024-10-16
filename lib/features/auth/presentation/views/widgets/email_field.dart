import 'package:flutter/material.dart';
import 'package:mini_whats_app/core/shared_widgets/customformfield.dart';

class EmailField extends StatelessWidget {
   EmailField({super.key});

  var emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return  Customformfield(
      validator: (text) {
        if (text == null || text.trim().isEmpty) {
          return 'please enter your email';
        }
        bool emailValid = RegExp(
            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
            .hasMatch(text);
        if (!emailValid) {
          return 'please enter a valid email';
        }
        return null;
      },
      Controller: emailController,
      preIcon: Icon(Icons.attach_email),
      labeltxt: 'your email',
      hint_txt:'enter your email' ,
      type: TextInputType.emailAddress,
    );
  }
}
