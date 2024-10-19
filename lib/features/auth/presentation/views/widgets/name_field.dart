import 'package:flutter/material.dart';
import 'package:mini_whats_app/core/shared_widgets/customformfield.dart';

class NameField extends StatelessWidget {
   NameField({super.key});

  static TextEditingController nameController=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Customformfield(
      Controller: nameController,
      validator:(value){
        if(value == null || value.trim().isEmpty)
          {return'please enter your name';}
        return null;
      } ,
      hint_txt:'enter your Name' ,
      labeltxt: 'your name',
      preIcon:Icon(Icons.person) ,
    );
  }
}
