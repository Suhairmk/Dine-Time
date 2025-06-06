import 'package:dinetime/app/constant/colors.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final  hintText;
  final  prifixicon;
   final sufixicon;
  final label;
  final controller;
  final validator;

  const CustomTextField({
    super.key,
     this.hintText,
     this.label, this.controller, this.validator,  this.prifixicon,  this.sufixicon,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      validator: validator,
      decoration: InputDecoration(
        label: Text(label),
        prefixIcon: Icon(prifixicon, color: AppColors.lightPrimary),
        suffixIcon:Icon(sufixicon,  color: AppColors.lightPrimary) ,
        hintText: hintText,
        filled: true,
        fillColor: const Color(0xFFF3F3F3),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide( color: AppColors.lightPrimary),
          borderRadius: BorderRadius.circular(12),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide( color: AppColors.lightPrimary, width: 2),
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    );
  }
}
