import 'package:flutter/material.dart';
import 'package:mini_whats_app/features/home/presentation/views/widgets/recent_updates_row.dart';
import 'package:mini_whats_app/features/home/presentation/views/widgets/recent_updates_text.dart';
import 'package:mini_whats_app/features/home/presentation/views/widgets/status_row.dart';
import 'package:mini_whats_app/features/home/presentation/views/widgets/viwed_updated_text.dart';
import 'package:mini_whats_app/features/home/presentation/views/widgets/viwed_updates_row.dart';

class StatusBody extends StatelessWidget {
  const StatusBody({super.key});

  @override
  Widget build(BuildContext context) {
    double height= MediaQuery.of(context).size.height;

    return  Padding(
      padding: const EdgeInsets.all(12.0),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            StatusRow(),
        
            RecentUpdatesText(),
            RecentUpdatesRow(),
            RecentUpdatesRow(),
            RecentUpdatesRow(),
        
            SizedBox(
              height: height*.03,
            ),
            ViwedUpdatesText(),
            ViwedUpdatesRow(),
          ],
        ),
      ),
    );
  }
}
