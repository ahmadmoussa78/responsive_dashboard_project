import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
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
