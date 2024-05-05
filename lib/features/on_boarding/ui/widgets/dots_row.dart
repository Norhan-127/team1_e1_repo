import 'package:flutter/material.dart';

import '../../../../core/routing/routes.dart';

class DotsRow extends StatelessWidget {
  int pageIndex;
  DotsRow({super.key, required this.pageIndex});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Container(
          decoration: pageIndex == 0
              ? BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(100))
              : BoxDecoration(
                  border: Border.all(width: 2, color: Colors.white),
                  borderRadius: BorderRadius.circular(100)),
          width: pageIndex == 0 ? 50 : 25,
          height: 25,
        ),
        Container(
          decoration: pageIndex == 1
              ? BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(100))
              : BoxDecoration(
                  border: Border.all(width: 2, color: Colors.white),
                  borderRadius: BorderRadius.circular(100)),
          width: pageIndex == 1 ? 50 : 25,
          height: 25,
        ),
        Container(
            decoration: pageIndex == 2
                ? BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(100))
                : BoxDecoration(
                    border: Border.all(width: 2, color: Colors.white),
                    borderRadius: BorderRadius.circular(100)),
            width: pageIndex == 2 ? 50 : 25,
            height: 25,
            child: InkWell(
                onTap: () {
                  Navigator.pushReplacementNamed(
                      context, Routes.beforeLoginScreen);
                },
                child: Center(child: Text('Next')))),
      ],
    );
  }
}
