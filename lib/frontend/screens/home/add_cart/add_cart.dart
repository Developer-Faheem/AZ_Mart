import 'package:azmart/frontend/screens/home/add_cart/addcartconst.dart';
import 'package:azmart/frontend/screens/home/add_cart/bottomSheet.dart';
import 'package:flutter/material.dart';

import '../../../../app_constant.dart';
import '../../../../components/common_button.dart';

class AddtoCartPage extends StatefulWidget {
  const AddtoCartPage({super.key});

  @override
  State<AddtoCartPage> createState() => _AddtoCartPageState();
}

class _AddtoCartPageState extends State<AddtoCartPage> {
 
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
    body: SingleChildScrollView(
      child: Column(
        children: [
          AddCartConst(name: "Indian Fish", image: "assets/images/products/2.jpg", price: "12000"),
          AddCartConst(name: "Indian Fish", image: "assets/images/products/3.jpg", price: "12000"),
        ],
      ),
    ),
      bottomNavigationBar: PrimaryButton(
        onTap: () {
          addCartBottomSheet(context);
        },
        innerText: "Next",
        phori: 40,
        pverti: 10,
        contHeight: 50,
        getcolor: AppColors.primaryColor,
        textColor: AppColors.bgWhiteColor,
      ),
    );
  }
}