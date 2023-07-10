// ignore_for_file: file_names, must_be_immutable

import 'package:flutter/material.dart';

class ProductTextField extends StatelessWidget {
  String title;
  String hintText;
  TextInputType? keytype;
  ProductTextField({
    required this.title,
    required this.hintText,
    this.keytype,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 18,
            ),
          ),
          const SizedBox(height: 8),
          TextField(
            keyboardType: keytype,
            decoration: InputDecoration(
              isDense: true,
              hintText: hintText,
              focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.grey, width: 1),
                borderRadius: BorderRadius.circular(10.0),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.grey, width: 0.0),
                borderRadius: BorderRadius.circular(10.0),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
