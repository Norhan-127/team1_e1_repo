import 'package:flutter/material.dart';

class DefaultButton extends StatelessWidget {
  const DefaultButton({super.key, required this.radius, required this.backgroundColor, this.function, required this.text, this.icon, required this.style, this.IconColor});
  final double radius;
  final Color backgroundColor;
  final void Function()? function;
  final String text;
  final IconData? icon;
  final TextStyle style;
  final Color? IconColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
        color: backgroundColor,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: MaterialButton(
          onPressed: function,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(text,style: style,),
              SizedBox(width: 10,),
              Icon(icon,color: IconColor,)
            ],
          ),
        ),
      ),
    );
  }
}
