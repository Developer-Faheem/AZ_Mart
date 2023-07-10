import 'package:azmart/components/common_ProductTextField.dart';
import 'package:flutter/material.dart';

import '../../../../app_constant.dart';
import '../../../../components/common_button.dart';

class EditProductPage extends StatefulWidget {
  const EditProductPage({super.key});

  @override
  State<EditProductPage> createState() => _EditProductPageState();
}

class _EditProductPageState extends State<EditProductPage> {
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
            const SizedBox(height: 20),
            ProductTextField(
                title: "Product Name", hintText: "Change product name"),
            ProductTextField(
                title: "Product Details", hintText: "Change product details"),
            ProductTextField(
                keytype: TextInputType.number,
                title: "Product Price",
                hintText: "Change product price"),
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
      ),
    );
  }
}
