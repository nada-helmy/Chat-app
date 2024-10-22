import 'package:flutter/material.dart';
import 'package:mini_whats_app/core/themes/my_colors.dart';

class RecentUpdatesText extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Text('Recent updates',style: TextStyle(
      fontWeight: FontWeight.bold ,
      color: Mycolors.grey ,
      fontSize: 27
    ),);
  }
}
