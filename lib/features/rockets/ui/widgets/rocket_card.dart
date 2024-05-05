import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:team1_e1/core/theming/colors.dart';
import 'package:team1_e1/core/theming/styles.dart';


class RocketCard extends StatelessWidget {
  List<String>? image;
  String? title;
  String? description;

  RocketCard(
      {super.key,
      required this.image,
      required this.title,
      required this.description});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 35.0, vertical: 18.0),
      child: Container(
        height: 300,
        decoration: BoxDecoration(
          border: Border.all(color: AppColors.lightGrey),
          borderRadius: const BorderRadius.all(Radius.circular(20)),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.only(topRight: Radius.circular(12.0) , topLeft: Radius.circular(12.0)),
              child: Image.network(
                            image![0],
                            height: 120.h,
                            fit: BoxFit.cover,
                            width: 300.w,
                          ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title!,
                      style: TextStyles.font22RegularWhite,
                    ),
                    Text(description!,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyles.SmallWhite),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
