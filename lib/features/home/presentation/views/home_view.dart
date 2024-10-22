import 'package:flutter/material.dart';
import 'package:mini_whats_app/features/home/presentation/views/widgets/home_body.dart';

class HomeView extends StatelessWidget {
  static const String routeName='home';

  @override
  Widget build(BuildContext context) {

    double width= MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: const Text('WhatsUp',style: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold
        ),),
        actions: [
          Icon(Icons.search_rounded,size: 30,),
          SizedBox(
            width: width*.09,
          ),
          InkWell(
              child: Icon(Icons.more_vert_outlined,size: 30,)),
        ],
      ),
      body:HomeBody() ,
    );
  }
}
