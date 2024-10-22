import 'package:flutter/material.dart';
import 'package:mini_whats_app/core/themes/my_colors.dart';

class SharedRow extends StatelessWidget {
  SharedRow({super.key,
    required this.status_name,
    required this.status_text,
    required this.status_state});

  String status_name;
  String status_text;
  String status_state;

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
              border: Border.all(
                color: status_state=='viewedStatus'? Mycolors.grey
                      :status_state=='recentStatus'? Mycolors.primary
                      : Colors.transparent ,
                width: 4
              )
            ),
            child: Container(
              decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(image:
                  AssetImage('assets/images/whatsapp-dark-mode.webp'),
                      fit: BoxFit.fill)
              ),
              width: width*.18,
              height: height*.09,
            ),
          ),
          SizedBox(
            width: width*.025,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('${status_name}',style: const TextStyle(
                  fontSize: 25,
                  fontWeight:FontWeight.bold
              ),),
              SizedBox(
                height: height*.009,
              ),
              Text('${status_text}',style:  TextStyle(
                  fontSize: 20,
                  fontWeight:FontWeight.bold,
                  color: Mycolors.grey
              ),),
            ],
          ),
        ],
      ),
    );
  }
}