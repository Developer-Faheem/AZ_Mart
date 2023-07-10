import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../app_constant.dart';
import '../../../components/common_button.dart';

void customButtomSheet(BuildContext context) {
  showModalBottomSheet(
    context: context,
    builder: (BuildContext c) {
      return SizedBox(
        height: 180,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const SizedBox(height: 12),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    const Text("Quantity"),
                    const SizedBox(height: 12),
                    Container(
                      height: 50,
                      width: 140,
                      decoration: BoxDecoration(
                        color: AppColors.primaryColor,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(right: 8),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: 50,
                              width: 60,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(
                                  width: 0.0,
                                  color: Colors.grey,
                                ),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: const Center(
                                child: Text(
                                  "1",
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                            ),
                            const Icon(Icons.add,
                                color: AppColors.bgWhiteColor, size: 20),
                            const Icon(Icons.remove,
                                color: AppColors.bgWhiteColor, size: 20),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    const Text("Price"),
                    const SizedBox(height: 12),
                    Container(
                      height: 50,
                      width: 140,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: AppColors.primaryColor,
                      ),
                      child: Center(
                        child: Text(
                          "Rs.1400",
                          style: GoogleFonts.poppins(
                            color: AppColors.bgWhiteColor,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            PrimaryButton(
              onTap: () {},
              innerText: "Add to Cart",
              phori: 40,
              pverti: 12,
              contHeight: 50,
              getcolor: AppColors.primaryColor,
              textColor: AppColors.bgWhiteColor,
            ),
          ],
        ),
      );
    },
  );
}
