import 'package:flutter/material.dart';
import '../app_style/colors.dart';


class CustomTextField extends StatelessWidget {
  final String hintText;
  final String labelText;
  final String? Function(String?)? validator;
  final void Function(String)? onChanged;
  final void Function(String?)? onSaved;

  final void Function(String)? onFieldSubmitted;
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final bool? obscureText;
  final IconData? prefixIcon;
  final Widget? suffixIcon;


  final AutovalidateMode? autovalidateMode;
  final int? maxLines  ;
  const CustomTextField({
    super.key,
    required this.hintText,
    this.validator,
    this.onChanged,
    this.onFieldSubmitted,
    this.controller,
    this.keyboardType,
    this.obscureText,
    this.prefixIcon,
    this.suffixIcon,
    this.onSaved,
    this.autovalidateMode,
    required this.labelText,
    this.maxLines =1 ,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autovalidateMode: autovalidateMode,
      validator: validator,
      onSaved: onSaved,
      onChanged: onChanged,
      onFieldSubmitted: onFieldSubmitted,
      controller: controller,
      keyboardType: keyboardType,
      obscureText: obscureText ?? false,
      cursorColor: AppColors.lightBlueColor,
      maxLines: maxLines,
      decoration: InputDecoration(
        hintText: hintText,
        labelText: labelText,
        labelStyle: const TextStyle(color: Colors.white, fontSize: 14),
        hintStyle: TextStyle(
            color: const Color(0xFF949D9E),
            fontSize: 12
        ),
        suffixIcon: suffixIcon,
        prefixIcon: Icon(prefixIcon , color: AppColors.lightBlueColor,),
        border: buildOutlineInputBorder(),
        enabledBorder: buildOutlineInputBorder(),
        focusedBorder: buildOutlineInputBorder(),
        fillColor: AppColors.lightBlueColor,
        filled: true,
      ),
    );
  }

  OutlineInputBorder buildOutlineInputBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(
        color: AppColors.lightBlueColor,
        width: 1.0,
      ),
    );
  }
}
