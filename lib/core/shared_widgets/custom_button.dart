import 'package:flutter/material.dart';
import 'package:mini_whats_app/core/themes/my_colors.dart';

class CustomButton extends StatelessWidget {
  CustomButton({
    required this.executed_method,
    required this.text,
    this.icon});

  String text;
  Function executed_method;
  IconData? icon;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return ElevatedButton(
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: width * .2),
          backgroundColor: Mycolors.primary,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
        ),
        onPressed: () {
          executed_method();
        },
        child: Row(
          children: [
            Icon(icon,size: 30,color: Mycolors.white,),
            SizedBox(width: width*.04,),
            Text(
              '$text',
              style: TextStyle(fontSize: 30, color: Mycolors.white),
            ),
          ],
        ));
  }
}
