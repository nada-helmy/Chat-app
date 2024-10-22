import 'package:flutter/material.dart';
import 'package:mini_whats_app/core/shared_widgets/custom_button.dart';
import 'package:mini_whats_app/features/auth/presentation/views/register_screen.dart';
import 'package:mini_whats_app/features/auth/presentation/views/widgets/login_body.dart';
import 'package:mini_whats_app/features/home/presentation/views/home_view.dart';

class LoginButton extends StatefulWidget {
   LoginButton({super.key});

  var formKy = LoginBody.formKy;

  @override
  State<LoginButton> createState() => _LoginButtonState();
}

class _LoginButtonState extends State<LoginButton> {
  @override
  Widget build(BuildContext context) {

    return CustomButton(
      text: 'login',
      executed_method: login,
    );
  }
   login() {
    if (widget.formKy.currentState!.validate() == true) {
        Navigator.of(context).pushNamed(HomeView.routeName);
        setState(() {});
    }
  }
}
