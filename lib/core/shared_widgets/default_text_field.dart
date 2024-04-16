import 'package:flutter/material.dart';

class DefaultTextField extends StatelessWidget {
  const DefaultTextField({super.key, required this.text, required this.labelStyle, this.suffixIcon, this.style});
final String text;
final TextStyle labelStyle;
final Widget? suffixIcon;
final TextStyle? style;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: style,
      decoration: InputDecoration(
          labelText: text,
          labelStyle: labelStyle,
          suffixIcon: suffixIcon
      ),
    );
  }
}
