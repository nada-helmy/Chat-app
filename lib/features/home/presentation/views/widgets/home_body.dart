import 'package:flutter/material.dart';
import 'package:mini_whats_app/core/themes/my_colors.dart';
import 'package:mini_whats_app/features/home/presentation/views/widgets/calls_body.dart';
import 'package:mini_whats_app/features/home/presentation/views/widgets/chat_body.dart';
import 'package:mini_whats_app/features/home/presentation/views/widgets/status_body.dart';

class HomeBody extends StatefulWidget {
   HomeBody({super.key});

  int selected_item=0;

  @override
  State<HomeBody> createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(

        currentIndex: widget.selected_item,

        onTap: (value) {
          widget.selected_item=value;
          setState(() {});
        },

        selectedFontSize: 25,
        selectedItemColor:Mycolors.primary ,
        selectedIconTheme: IconThemeData(
          size:35 ,
        ),
        unselectedFontSize:22 ,
        unselectedIconTheme:IconThemeData(
          size:25 ,
          color: Mycolors.primary
        ) ,

        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.chat),
              label: 'chats'
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.camera_alt),
              label: 'status'
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.call),
              label: 'calls'
          ),
        ],
      ),

      body: widget.selected_item==0?
            ChatBody()
          :widget.selected_item==1?
            StatusBody():
            CallsBody()
    );
  }
}
