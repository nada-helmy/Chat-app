import 'package:flutter/material.dart';
import 'package:mini_whats_app/core/themes/my_colors.dart';
import 'package:mini_whats_app/features/home/presentation/views/widgets/calls_row.dart';

class CallsBody extends StatelessWidget {
  const CallsBody({super.key});

  @override
  Widget build(BuildContext context) {
    double height= MediaQuery.of(context).size.height;

    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Recent',style: TextStyle(
              color: Mycolors.grey,
              fontSize: 30,
              fontWeight: FontWeight.w700
            ),),
            SizedBox(
              height: height*.03,
            ),
            CallsRow(),
            CallsRow(),
            CallsRow(),
            CallsRow(),
            CallsRow(),
          ],
        ),
      ),
    );
  }
}