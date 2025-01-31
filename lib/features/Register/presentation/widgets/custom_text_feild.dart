import 'package:flutter/material.dart';

class CustomTextFeild extends StatelessWidget {
  final String label;
  final TextInputType keyboardType;
  final bool obscureText;
  final ValueChanged<String> onChanged;
  const CustomTextFeild(
      {super.key,
      required this.label,
      this.keyboardType = TextInputType.text,
      this.obscureText = false,
      required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        labelText: label,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      keyboardType: keyboardType,
      obscureText: obscureText,
      onChanged: onChanged,
    );
  }
}
