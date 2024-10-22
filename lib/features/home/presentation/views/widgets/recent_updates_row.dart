import 'package:flutter/material.dart';
import 'package:mini_whats_app/features/home/presentation/views/widgets/shared_row.dart';

class RecentUpdatesRow extends StatelessWidget {
  const RecentUpdatesRow({super.key});

  @override
  Widget build(BuildContext context) {
    return SharedRow(
      status_state: 'recentStatus',
        status_text:'Today, 12:00 p.m' ,
        status_name: 'Marwan Ali',
    );
  }
}
