import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
      margin: EdgeInsets.only(top: 30.h),
      alignment: Alignment.center,
      width: 370.w,
      height: containerHeight,
      decoration: BoxDecoration(
          color: Colors.grey.withOpacity(0.3),
          borderRadius: BorderRadius.circular(15)),
      child: ListTile(
        title: Text(
          widget.text,
          style: TextStyles.poppins28BoldWhite,
        ),
        subtitle: isVisable == false
            ? null
            : Container(
                width: 370.w,
                height: 60.h,
                decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.3),
                    borderRadius: BorderRadius.circular(15)),
                child: widget.columnDetails),
        trailing: IconButton(
            onPressed: () {
              containerHeight = isVisable == true ? 80.h : 100.h;
              isVisable = !isVisable;
              setState(() {});
            },
            icon: isVisable == false
                ? const Icon(
                    Icons.arrow_upward,
                    color: Colors.white,
                  )
                : const Icon(
                    Icons.arrow_downward,
                    color: Colors.white,
                  )),
      ),
    );
  }
}
