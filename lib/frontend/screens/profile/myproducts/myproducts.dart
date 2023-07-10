import 'package:azmart/frontend/screens/profile/myproducts/myproductsconst.dart';
import 'package:flutter/material.dart';

import '../../../../app_constant.dart';

class MyProductsPage extends StatefulWidget {
  const MyProductsPage({super.key});

  @override
  State<MyProductsPage> createState() => _MyProductsPageState();
}

class _MyProductsPageState extends State<MyProductsPage> {
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
      body: const SingleChildScrollView(
        child: Column(
          children: [
             MyProductConst(),
             MyProductConst(),
             MyProductConst(),
          ],
        ),
      ),
    );
  }
}

