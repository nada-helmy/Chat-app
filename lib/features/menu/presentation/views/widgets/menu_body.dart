import 'package:flutter/material.dart';
import 'package:mini_whats_app/features/profile/presentation/views/profile_view.dart';

class MenuBody extends StatelessWidget {
  const MenuBody({super.key});

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      style: ButtonStyle(),
      onSelected:(value) {
        if(value==0)
        {Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ProfileView()),);}
        else if(value==1)
          {Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ProfileView()));}
        else if(value==2)
        {Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ProfileView()));}
      } ,
      shape: RoundedRectangleBorder
        (borderRadius:BorderRadius.circular(16)),
      padding: const EdgeInsets.all(12),
      itemBuilder:(context) {
        return[
          const PopupMenuItem(
            value: 0,
            child: Text('New group')
        ),
          const PopupMenuItem(
              value: 1,
              child: Text('Profile')
          ),
          const PopupMenuItem(
              value: 2,
              child: Text('Log out')
          )
        ];
      },
      child: const Icon(Icons.more_vert_outlined,size: 30,),
    );
  }
}
