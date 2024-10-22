import 'package:flutter/material.dart';
import 'package:mini_whats_app/core/themes/my_colors.dart';
import 'package:mini_whats_app/features/home/presentation/views/widgets/chat_row.dart';

class ChatBody extends StatelessWidget {
  const ChatBody({super.key});

  @override
  Widget build(BuildContext context) {

    double height= MediaQuery.of(context).size.height;

    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Mycolors.primary,
        onPressed: (){
          //todo
        },
        child:Icon(Icons.chat,color:Mycolors.white ,size: 30,) ,
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            ChatRow(
              row_name: 'rowan',
              row_number: '# 01156489237',
            ),
            SizedBox(
              height: height*.02,
            ),
            ChatRow(
              row_name: 'mohab',
              row_number: '# 01156489237',
            ),
            SizedBox(
              height: height*.02,
            ),
            ChatRow(
              row_name: 'marwan',
              row_number: '# 01156489237',
            )
          ],
        ),
      ),
    );
  }
}
