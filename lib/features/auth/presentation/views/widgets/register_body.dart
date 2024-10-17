import 'package:flutter/material.dart';
import 'package:mini_whats_app/features/auth/presentation/views/widgets/email_field.dart';
import 'package:mini_whats_app/features/auth/presentation/views/widgets/login_row.dart';
import 'package:mini_whats_app/features/auth/presentation/views/widgets/name_field.dart';
import 'package:mini_whats_app/features/auth/presentation/views/widgets/password_field.dart';
import 'package:mini_whats_app/features/auth/presentation/views/widgets/phone_field.dart';
import 'package:mini_whats_app/features/auth/presentation/views/widgets/register_button.dart';
import 'package:mini_whats_app/features/auth/presentation/views/widgets/register_title.dart';
import 'package:mini_whats_app/features/auth/presentation/views/widgets/whatsapp_logo.dart';

class RegisterBody extends StatelessWidget {
  const RegisterBody({super.key});

  static var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;

    return Form(
      key: formKey,
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            WhatsappLogo(),
            SizedBox(
              height: height*.01,
            ),
            RegisterTitle(),
            SizedBox(
              height: height*.02,
            ),
            NameField(),
            SizedBox(
              height: height*.0009,
            ),
            EmailField(),
            SizedBox(
              height: height*.0009,
            ),
            PhoneField(),
            SizedBox(
              height: height*.0009,
            ),
            PasswordField(),
            SizedBox(
              height: height*.07,
            ),
            RegisterButton(),
            SizedBox(
              height: height*.05,
            ),
            LoginRow(),
          ],
        ),
      ),
    );
  }
}
