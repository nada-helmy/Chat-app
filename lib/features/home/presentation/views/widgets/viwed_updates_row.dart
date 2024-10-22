import 'package:flutter/material.dart';
import 'package:mini_whats_app/features/home/presentation/views/widgets/shared_row.dart';

class ViwedUpdatesRow extends StatelessWidget {
  const ViwedUpdatesRow({super.key});

  @override
  Widget build(BuildContext context) {
    return SharedRow(
      status_state: 'viewedStatus',
        status_text:'Today, 12:00 p.m' ,
        status_name: 'Marwan Ali',
    );
  }
}
