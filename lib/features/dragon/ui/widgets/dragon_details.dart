import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:team1_e1/core/theming/colors.dart';

import '../../../../core/theming/styles.dart';
import '../../data/models/dragon_response.dart';

class DragonDetails extends StatefulWidget {
  String text;
  Widget columnDetails;
  DragonDetails({super.key, required this.columnDetails, required this.text});

  @override
  State<DragonDetails> createState() => _DragonDetailsState();
}

class _DragonDetailsState extends State<DragonDetails> {
  bool isVisable = false;
  double containerHeight = 80.h;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20.h),
      alignment: Alignment.center,
      width: 370.w,
      height: containerHeight,
      decoration: BoxDecoration(
        border: Border.all(width: 1,color: AppColors.gray.withOpacity(.3)),
        borderRadius: const BorderRadius.all(Radius.circular(20)),
      ),
      child: ListTile(
        title: Text(
          widget.text,
          style: TextStyles.fontSpace22RegularWhite,
        ),
        subtitle: isVisable == false
            ? null
            : Container(
                width: 370.w,
                height: 60.h,
            decoration: BoxDecoration(
              border: Border.all(width: 1,color: AppColors.gray.withOpacity(.3)),
              borderRadius: const BorderRadius.all(Radius.circular(20)),
            ),
                child: widget.columnDetails),
        trailing: IconButton(
            onPressed: () {
              containerHeight = isVisable == true ? 80.h : 100.h;
              isVisable = !isVisable;
              setState(() {});
            },
            icon: isVisable == false
                ? const Icon(
                    Icons.arrow_circle_down_outlined,
                    color: Colors.white,
                  )
                : const Icon(
                    Icons.arrow_circle_up_outlined,
                    color: Colors.white,
                  )),
      ),
    );
  }
}
