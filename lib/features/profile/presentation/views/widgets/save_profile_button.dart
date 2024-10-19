import 'package:flutter/material.dart';
import 'package:mini_whats_app/core/shared_widgets/custom_button.dart';

class SaveProfileButton extends StatelessWidget {
  const SaveProfileButton({super.key});

  @override
  Widget build(BuildContext context) {

    return CustomButton(
      icon: Icons.save,
      text: 'Save Profile',
      executed_method: saveProfile,
    );
  }

  saveProfile() {
    //todo
  }
}
