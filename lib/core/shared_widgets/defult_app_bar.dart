import 'package:flutter/material.dart';
import 'package:team1_e1/core/theming/colors.dart';
import 'package:team1_e1/core/theming/styles.dart';


class DefaultAppBar extends StatelessWidget implements PreferredSizeWidget {
  const DefaultAppBar({super.key, this.isCenter, this.icon, this.text, this.action, this.function});

  final bool ?isCenter;
  final IconData? icon;
  final String ?text;
  final List<Widget>? action;
  final void Function()? function;

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      centerTitle: isCenter,
      leading: IconButton(
        icon: Icon(icon,color: AppColors.whiteColor, size: 26,),
        onPressed: function,),
      title: Text('$text',style: TextStyles.BoldlWhite,),
      actions: action,
    );
  }
}