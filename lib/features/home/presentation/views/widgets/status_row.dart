import 'package:flutter/material.dart';
import 'package:mini_whats_app/core/themes/my_colors.dart';
import 'package:mini_whats_app/features/home/presentation/views/widgets/shared_row.dart';

class StatusRow extends StatelessWidget {
   StatusRow({super.key});

  @override
  Widget build(BuildContext context) {
    double height= MediaQuery.of(context).size.height;
    double width= MediaQuery.of(context).size.width;
    return Stack(
      clipBehavior: Clip.none,
      children: [
        SharedRow(
          status_state: '',
          status_name: 'My Status',
          status_text:'tab to add status update' ,
        ),
        Positioned(
          bottom: height*.023,
          right: width*.71,
          child: Container(
            decoration: BoxDecoration(
              color: Mycolors.white,
              shape: BoxShape.circle,
              border: Border.all(
                color: Mycolors.primary,
                width: 3
              )
            ),
              child: Icon(Icons.add,color: Mycolors.primary,size: 20,)),
        )
      ],
    );
  }
}
