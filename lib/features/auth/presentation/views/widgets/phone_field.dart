import 'package:flutter/material.dart';
import 'package:mini_whats_app/core/shared_widgets/customformfield.dart';

class PhoneField extends StatelessWidget {

TextEditingController phoneController= TextEditingController();
  @override
  Widget build(BuildContext context) {

    return Customformfield(
      Controller: phoneController,
      validator:(value){
        if(value == null || value.trim().isEmpty)
        {return'please enter your number';}
        if(phoneController.text.length< 11)
          {return 'the phone number must be 11 numbers';}
        return null;
      } ,
      hint_txt:'enter your phone' ,
      labeltxt: 'your phone',
      preIcon:Icon(Icons.mobile_friendly) ,
    );
  }
}
