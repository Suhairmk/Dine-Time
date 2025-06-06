import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final IconData icon;

  const CustomTextField({
    super.key,
    required this.hintText,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        prefixIcon: Icon(icon, color: const Color(0xFF7D0A0A)),
        hintText: hintText,
        filled: true,
        fillColor: const Color(0xFFF3F3F3),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Color(0xFF7D0A0A)),
          borderRadius: BorderRadius.circular(12),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Color(0xFF7D0A0A), width: 2),
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    );
  }
}
