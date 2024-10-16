import 'package:flutter/material.dart';
import 'package:mini_whats_app/core/constants/images.dart';

class WhatsappLogo extends StatelessWidget {
  const WhatsappLogo({super.key});

  @override
  Widget build(BuildContext context) {
    double height= MediaQuery.of(context).size.height;
    double width= MediaQuery.of(context).size.width;
    return Container(
      child: Image.asset(Images.logo,
        height: height*.4,
        width:width*.4 ,),
    );
  }
}
