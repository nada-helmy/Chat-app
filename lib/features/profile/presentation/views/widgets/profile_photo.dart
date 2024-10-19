import 'package:flutter/material.dart';
import 'package:mini_whats_app/core/themes/my_colors.dart';

class ProfilePhoto extends StatelessWidget {
  const ProfilePhoto({super.key});

  @override
  Widget build(BuildContext context) {

    return Stack(
      alignment: AlignmentDirectional(.1, 1.2),
      children:[
        CircleAvatar(
        radius: 80.0,
        backgroundImage: AssetImage('assets/images/whatsapp-dark-mode.webp'),
      ),
        Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Mycolors.primary,
          ),
          child: IconButton(
              onPressed: (){
                //todo
              },
              icon: Icon(Icons.edit,color: Mycolors.white,)),
        )
      ]
    );
  }
}
