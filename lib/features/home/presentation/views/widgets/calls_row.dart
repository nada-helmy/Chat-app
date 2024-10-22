import 'package:flutter/material.dart';
import 'package:mini_whats_app/features/home/presentation/views/widgets/shared_row.dart';

class CallsRow extends StatelessWidget {
  const CallsRow({super.key});

  @override
  Widget build(BuildContext context) {
    double width= MediaQuery.of(context).size.width;
    
    return Row(
      children: [
        SharedRow(
            status_name: 'Rowan',
            status_text: 'Today, 10 a.m',
            status_state: ''),
        SizedBox(
          width: width*.25,
        ),
        Icon(Icons.call,size: 30,color:Colors.grey.shade700,)
      ],
    );
  }
}
