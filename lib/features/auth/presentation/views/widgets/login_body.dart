import 'package:flutter/material.dart';
import 'package:mini_whats_app/features/auth/presentation/views/widgets/login_button.dart';
import 'package:mini_whats_app/features/auth/presentation/views/widgets/login_title.dart';
import 'package:mini_whats_app/features/auth/presentation/views/widgets/password_field.dart';
import 'package:mini_whats_app/features/auth/presentation/views/widgets/register_row.dart';
import 'package:mini_whats_app/features/auth/presentation/views/widgets/whatsapp_logo.dart';
import 'package:mini_whats_app/features/auth/presentation/views/widgets/email_field.dart';


class LoginBody extends StatelessWidget {
   LoginBody({super.key});

  static var formKy = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;

    return Form(
      key: formKy,
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            WhatsappLogo(),
            SizedBox(
              height: height*.01,
            ),
            LoginTitle(),
            SizedBox(
              height: height*.02,
            ),
            EmailField(),
            SizedBox(
              height: height*.0009,
            ),
            PasswordField(),
            SizedBox(
              height: height*.07,
            ),
            LoginButton(),
            SizedBox(
              height: height*.05,
            ),
            RegisterRow(),
          ],
        ),
      ),
    );
  }
}
