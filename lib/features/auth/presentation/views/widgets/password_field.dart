import 'package:flutter/material.dart';
import 'package:mini_whats_app/core/shared_widgets/customformfield.dart';

class PasswordField extends StatefulWidget {
   PasswordField({super.key});

  @override
  State<PasswordField> createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
  var passController = TextEditingController();

   bool isSecure =true;

  @override
  Widget build(BuildContext context) {
    return Customformfield(
      validator: (pass) {
        if (pass == null || pass.trim().isEmpty) {
          return 'please enter a password';
        }
        if (pass.length < 6) {
          return 'password should be at least 6 characters';
        }
        return null;
      },
      txtSecure: isSecure,
      Controller: passController,
      labeltxt: 'your password',
      hint_txt:'enter your password' ,
      preIcon: Icon(Icons.lock),
      suffixIcon: isSecure? IconButton(
        onPressed:(){
          isSecure=false;
          setState(() {});
        } ,
        icon:Icon(Icons.visibility),)
           : IconButton(
             onPressed:(){
               isSecure=true;
               setState(() {});
             } ,
             icon:Icon(Icons.visibility_off),)

    );
  }
}
