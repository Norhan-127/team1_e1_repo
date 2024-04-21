import 'package:flutter/material.dart';

class DefaultTextField extends StatelessWidget {
  final String text;
  final TextStyle labelStyle;
  final Widget? suffixIcon;
  final TextStyle? style;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final bool isPassword;
  const DefaultTextField({super.key, required this.text, required this.labelStyle, this.suffixIcon, this.style, this.controller, this.validator, required this.isPassword});
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: isPassword,
      controller: controller,
      validator: validator,
      style: style,
      decoration: InputDecoration(
          labelText: text,
          labelStyle: labelStyle,
          suffixIcon: suffixIcon
      ),
    );
  }
}
