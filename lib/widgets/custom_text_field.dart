import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.hint});
  final String hint;
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: AppStyles.styleRegular16.copyWith(
          color: const Color(0XFFAAAAAA),
        ),
        focusedBorder: buildBorder().copyWith(
          borderSide: const BorderSide(color: Colors.black),
        ),
        enabledBorder: buildBorder(),
        fillColor: const Color(0XffFAFAFA),
        filled: true,
        border: buildBorder(),
      ),
    );
  }

  OutlineInputBorder buildBorder() {
    return OutlineInputBorder(
      borderSide: const BorderSide(color: Color(0xffFAFAFA)),
      borderRadius: BorderRadius.circular(12),
    );
  }
}
