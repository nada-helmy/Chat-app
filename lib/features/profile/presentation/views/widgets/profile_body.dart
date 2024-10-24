import 'package:flutter/material.dart';
import 'package:mini_whats_app/core/themes/my_colors.dart';
import 'package:mini_whats_app/features/profile/presentation/views/widgets/name_profile_field.dart';
import 'package:mini_whats_app/features/profile/presentation/views/widgets/phone_profile_field.dart';
import 'package:mini_whats_app/features/profile/presentation/views/widgets/profile_photo.dart';
import 'package:mini_whats_app/features/profile/presentation/views/widgets/save_profile_button.dart';

class ProfileBody extends StatelessWidget {
  const ProfileBody({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: Text('Profile',
          style: TextStyle(color: Mycolors.black,fontSize: 35),),
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
            child: Icon(Icons.arrow_back,size: 30,color: Mycolors.primary,)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: height*.04,
            ),
            ProfilePhoto(),
            SizedBox(
              height: height*.1,
            ),
            NameProfileField(),
            SizedBox(
              height: height*.02,
            ),
            PhoneProfileField(),
            SizedBox(
              height: height*.12,
            ),
            SaveProfileButton(),
          ],
        ),
      ),
    );
  }
}
