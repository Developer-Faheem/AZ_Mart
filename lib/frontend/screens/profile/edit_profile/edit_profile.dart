import 'package:flutter/material.dart';

import '../../../../app_constant.dart';
import '../../../../components/common_button.dart';
import '../../../../components/common_textfield.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({super.key});

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(
            Icons.arrow_back,
            color: AppColors.blackColor,
          ),
        ),
      ),
      body: Column(
        children: [
          const SizedBox(height: 12),
          const CircleAvatar(
            radius: 60,
            backgroundColor: AppColors.primaryColor,
            backgroundImage: NetworkImage(
                "https://cdn-icons-png.flaticon.com/512/3378/3378424.png"),
          ),
          const SizedBox(height: 20),
          TextFieldConst(geticon: Icons.person_outline, label: "Soum Shahid"),
          TextFieldConst(geticon: Icons.home_outlined, label: "Garden"),
          const SizedBox(height: 30),
          PrimaryButton(
            onTap: () {},
            innerText: "Edit Now",
            phori: 40,
            pverti: 10,
            contHeight: 50,
            getcolor: AppColors.primaryColor,
            textColor: AppColors.bgWhiteColor,
          ),
        ],
      ),
    );
  }
}
