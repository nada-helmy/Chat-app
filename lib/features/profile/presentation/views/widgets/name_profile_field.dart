import 'package:flutter/material.dart';
import 'package:mini_whats_app/core/themes/my_colors.dart';
import 'package:mini_whats_app/features/auth/presentation/views/widgets/name_field.dart';

class NameProfileField extends StatelessWidget {
   NameProfileField({super.key});

  TextEditingController nameProfileController= NameField.nameController;

  @override
  Widget build(BuildContext context) {

    double height = MediaQuery.of(context).size.height;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text('Name',style: TextStyle(color: Mycolors.black,fontSize: 25)),
        SizedBox(
          height: height*.01,
        ),
        TextField(
          controller: nameProfileController,
          decoration: InputDecoration(
            errorStyle: TextStyle(fontSize:25),
            fillColor: Colors.white,
            filled: true,
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide:
                BorderSide(color: Mycolors.grey, width: 3)),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide:
                BorderSide(color: Mycolors.primary, width: 3)),
            errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide:
                BorderSide(color: Mycolors.red, width:2)),
            focusedErrorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide:
                BorderSide(color: Mycolors.red, width:2)),
          ),
        )
      ],
    );
  }
}