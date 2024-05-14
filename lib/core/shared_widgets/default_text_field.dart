import 'package:flutter/material.dart';
import 'package:team1_e1/core/theming/colors.dart';

class DefaultTextField extends StatelessWidget {
  final String ?text;
  final TextStyle ?labelStyle;
  final Widget? suffixIcon;
  final TextStyle? style;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final bool isPassword;
  final Color? fillColor;
  final bool? filled;
  final double? radius;
  final BorderSide? borderSide;
  final bool ?readOnly;
  const DefaultTextField({super.key, this.text, this.labelStyle, this.suffixIcon, this.style, this.controller, this.validator, required this.isPassword, this.fillColor, this.filled, this.radius, this.borderSide, this.readOnly});
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      readOnly: readOnly!,
      obscureText: isPassword,
      controller: controller,
      validator: validator,
      style: style,
      decoration: InputDecoration(
          border: OutlineInputBorder(
            borderSide: BorderSide(width: 1 , color: AppColors.gray),
            borderRadius: BorderRadius.all(Radius.circular(radius!)) ,
          ),
          filled: filled,
          fillColor: fillColor,
          labelText: text,
          labelStyle: labelStyle,
          suffixIcon: suffixIcon
      ),
    );
  }
}
