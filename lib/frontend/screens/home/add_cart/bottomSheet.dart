import 'package:azmart/components/common_Route.dart';
import 'package:azmart/frontend/screens/home/add_cart/order_complete.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../app_constant.dart';
import '../../../../components/common_ProductTextField.dart';
import '../../../../components/common_button.dart';

void addCartBottomSheet(BuildContext context) {
  showModalBottomSheet(
    context: context,
    builder: ((context) {
      return SizedBox(
        height: 220,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ProductTextField(
                title: "Confirm Your Address",
                hintText: "Street No 10 , Near Golden Garden"),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Total",
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    ":",
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    "15600",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            PrimaryButton(
              onTap: () {
                // pageRoute(context, const PaymentPage());
                showDialog(
                    context: context,
                    builder: (_) {
                      return AlertDialog(
                        title: const Text("Please Fill Carefully"),
                        content: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Row(
                              children: [
                                Expanded(
                                  flex: 5,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: TextField(
                                      keyboardType: TextInputType.number,
                                      decoration: InputDecoration(
                                        isDense: true,
                                        hintText: "Enter Card Number",
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: const BorderSide(
                                              color: Colors.grey, width: 1),
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                        ),
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: const BorderSide(
                                              color: Colors.grey, width: 0.0),
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: SvgPicture.asset(AppSvg.visaSvg, height: 40),
                                ),
                              ],
                            ),
                            const SizedBox(height: 12),
                            ElevatedButton(
                              style: const ButtonStyle(
                                backgroundColor: MaterialStatePropertyAll(AppColors.primaryColor),
                              ),
                              onPressed: (){
                              pageRoute(context, const  OrderCompletePage());
                            }, child: const Center(child: Text("Order Now"),),),
                          ],
                        ),
                      );
                    });
              },
              innerText: "Confirm",
              phori: 40,
              pverti: 10,
              contHeight: 50,
              getcolor: AppColors.primaryColor,
              textColor: AppColors.bgWhiteColor,
            ),
          ],
        ),
      );
    }),
  );
}
