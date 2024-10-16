import 'package:flutter/material.dart';
import 'package:mini_whats_app/core/shared_widgets/custom_button.dart';
import 'package:mini_whats_app/features/auth/presentation/views/login_screen.dart';
import 'package:mini_whats_app/features/auth/presentation/views/widgets/register_body.dart';
import 'package:mini_whats_app/features/home/presentation/views/home.dart';

class RegisterButton extends StatefulWidget {
   RegisterButton({super.key});

   var formKey = RegisterBody.formKey;

  @override
  State<RegisterButton> createState() => _RegisterButtonState();
}

class _RegisterButtonState extends State<RegisterButton> {

  @override
  Widget build(BuildContext context) {
    return CustomButton(
      text: 'Sign Up',
      executed_method: register,
    );
  }

  register() {
    if (widget.formKey.currentState!.validate() == true) {
      Navigator.of(context).pushNamed(Home.routeName);
      setState(() {});
    }
  }
}

