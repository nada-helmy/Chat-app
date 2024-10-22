import 'package:flutter/material.dart';
import 'package:mini_whats_app/core/themes/my_colors.dart';

class ChatRow extends StatelessWidget {
   ChatRow({super.key,
   required this.row_name, required this.row_number});

  String row_name;
  String row_number;

  @override
  Widget build(BuildContext context) {

    double width= MediaQuery.of(context).size.width;
    double height= MediaQuery.of(context).size.height;

    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
             decoration: BoxDecoration(
               shape: BoxShape.circle,
               color: Mycolors.grey
             ),
            width: width*.16,
            height: height*.1,
             child: Icon(Icons.person,size: 40,color: Mycolors.white,),
           ),
          SizedBox(
            width: width*.025,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('${row_name}',style: const TextStyle(
                fontSize: 25,
                fontWeight:FontWeight.bold
              ),),
              SizedBox(
                height: height*.009,
              ),
              Text('${row_number}',style:  TextStyle(
                fontSize: 20,
                fontWeight:FontWeight.w600,
                color: Mycolors.grey
              ),),
            ],
          ),
          SizedBox(
            width: width*.2,
          ),
          Column(
            children: [
              Text('12:00 p.m',style: const TextStyle(
                fontSize: 18,
              ),),
              SizedBox(
                height: height*.01,
              ),
              Container(
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Mycolors.primary,

                ),
                width: width*.08,
                height: height*.04,
                child: Text('2',textAlign:TextAlign.center,
                  style: TextStyle(
                  fontSize: 25,
                  color: Mycolors.white
                ),),
              ),
            ],
          )
        ],
      ),
    );
  }
}
