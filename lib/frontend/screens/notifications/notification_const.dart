import 'package:flutter/material.dart';

import '../../../app_constant.dart';
import '../../../components/common_button.dart';

class NotificationConst extends StatelessWidget {
  const NotificationConst({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      trailing: const Text("12/4/23"),
      title: const Text("Hot Sale !!"),
      leading: const Icon(
        Icons.fire_truck_outlined,
        color: AppColors.primaryColor,
      ),
      children: [
        const Text("Welcome !! Now 70% off on all products"),
        const SizedBox(height: 20),
        PrimaryButton(
          innerText: "Delete",
          phori: 40,
          pverti: 10,
          contHeight: 50,
          getcolor: Colors.red,
          textColor: AppColors.bgWhiteColor,
        ),
      ],
    );
  }
}
