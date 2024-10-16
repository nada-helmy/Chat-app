import 'package:flutter/material.dart';
import 'package:mini_whats_app/core/themes/my_colors.dart';

class Customformfield extends StatelessWidget {
  String labeltxt='';
  String hint_txt='';
  Widget? preIcon;
  Widget? suffixIcon;
  Function? onIconPressed;
  bool txtSecure;
  TextInputType type;
  String? Function(String?) validator;
  TextEditingController Controller;

  Customformfield({
    required this.hint_txt,
    this.txtSecure=false,
    this.onIconPressed,
    required this.labeltxt,
    this.preIcon,
    this.suffixIcon,
    this.type=TextInputType.text,
    required this.validator,
    required this.Controller});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        style: TextStyle(
          fontSize: 25,
        ),
        obscureText:txtSecure,
        validator: validator,
        controller: Controller,
        keyboardType: type,
        decoration: InputDecoration(
          errorStyle: TextStyle(fontSize:25),
          fillColor: Colors.white,
          filled: true,
          hintText:hint_txt ,
          prefixIcon: preIcon,
          suffixIcon:suffixIcon  ,
          labelText:labeltxt ,
          hintStyle: TextStyle(
            color: Mycolors.grey,
            fontSize: 25,
          ),
          labelStyle: TextStyle(
            color: Mycolors.grey,
            fontSize: 25,
          ),
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
        ),),
    );
  }
}
