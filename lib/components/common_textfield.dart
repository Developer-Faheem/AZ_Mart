// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

import '../app_constant.dart';

class TextFieldConst extends StatelessWidget {
  IconData geticon;
  String label;
  TextInputType? keytype;
  TextFieldConst({
    required this.geticon,
    required this.label,
    this.keytype,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        keyboardType: keytype,
        decoration: InputDecoration(
          icon: Icon(
            geticon,
            size: 24,
            color: AppColors.primaryColor,
          ),
          isDense: true,
          hintText: label,
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
    );
  }
}

class TextFieldwithPassConst extends StatefulWidget {
  IconData geticon;
  String label;
  TextFieldwithPassConst({
    required this.geticon,
    required this.label,
    super.key,
  });

  @override
  State<TextFieldwithPassConst> createState() => _TextFieldwithPassConstState();
}

class _TextFieldwithPassConstState extends State<TextFieldwithPassConst> {
  bool changer = true;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        obscureText: changer,
        decoration: InputDecoration(
          icon: Icon(
            widget.geticon,
            size: 24,
            color: AppColors.primaryColor,
          ),
          isDense: true,
          suffixIcon: GestureDetector(
            onTap: () {
              setState(() {
                changer = !changer;
              });
            },
            child: changer
                ? const Icon(
                    Icons.visibility_off,
                    color: Colors.grey,
                  )
                : const Icon(
                    Icons.visibility,
                    color: Colors.grey,
                  ),
          ),
          hintText: widget.label,
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
    );
  }
}
