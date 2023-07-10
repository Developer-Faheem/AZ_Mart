import 'package:flutter/material.dart';

import '../../../app_constant.dart';
import '../../../components/common_ProductTextField.dart';
import '../../../components/common_button.dart';

class AddProductsPage extends StatefulWidget {
  const AddProductsPage({super.key});

  @override
  State<AddProductsPage> createState() => _AddProductsPageState();
}

class _AddProductsPageState extends State<AddProductsPage> {
  String valuechanges = "Meat";
  List categories = [
    "Meat",
    "Fresh Bread",
    "Soda",
    "Vegetables",
    "Mutton",
    "Frozen Items",
  ];
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 200,
              width: double.infinity,
              color: Colors.black12,
              child: const Center(
                child: Icon(Icons.camera_alt_outlined,
                    color: AppColors.primaryColor),
              ),
            ),
            const SizedBox(height: 12),
            ProductTextField(
              title: "Product Name",
              hintText: "Enter Product Name",
            ),
            ProductTextField(
              title: "Description",
              hintText: "Enter Product Description",
            ),
            ProductTextField(
              keytype: TextInputType.number,
              title: "Price",
              hintText: "Enter Product Price",
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Select Category",
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 18,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8),
              child: DropdownButtonHideUnderline(
                child: DropdownButton<String>(
                    value: valuechanges,
                    isExpanded: true,
                    items: categories.map<DropdownMenuItem<String>>((e) {
                      return DropdownMenuItem(
                        value: e,
                        child: Text(e),
                      );
                    }).toList(),
                    onChanged: (v) {
                      setState(() {
                        valuechanges = v!;
                      });
                    }),
              ),
            ),
            PrimaryButton(
              onTap: () {},
              innerText: "Upload",
              phori: 40,
              pverti: 20,
              contHeight: 60,
              getcolor: AppColors.primaryColor,
              textColor: AppColors.bgWhiteColor,
            ),
          ],
        ),
      ),
    );
  }
}
