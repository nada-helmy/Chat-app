import 'package:flutter/material.dart';
import 'package:mini_whats_app/core/themes/my_colors.dart';

class ViwedUpdatesText extends StatelessWidget {
  const ViwedUpdatesText({super.key});

  @override
  Widget build(BuildContext context) {
    return Text('Viewed updates',style: TextStyle(
        fontWeight: FontWeight.bold ,
        color: Mycolors.grey ,
        fontSize: 27
    ),);
  }
}
