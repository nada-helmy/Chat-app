import 'package:flutter/material.dart';
import 'package:mini_whats_app/features/profile/presentation/views/widgets/profile_body.dart';

class ProfileView extends StatelessWidget {
  static const String routeName='profile';

  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return ProfileBody();
  }
}
