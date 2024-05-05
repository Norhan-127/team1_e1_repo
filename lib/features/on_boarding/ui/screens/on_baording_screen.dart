import 'package:another_transformer_page_view/another_transformer_page_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:team1_e1/features/on_boarding/ui/widgets/dots_row.dart';
import 'package:team1_e1/features/on_boarding/ui/widgets/onboarding_images.dart';
import 'package:team1_e1/features/on_boarding/ui/widgets/upper_page.dart';
import '../widgets/transformer.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  int _pageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 40.0.h, horizontal: 30.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            UpperPage(),
            SizedBox(
              height: 30.h,
            ),
            Expanded(
                child: TransformerPageView(
              itemCount: 3,
              curve: Curves.easeInOut,
              transformer: AccordionTransformer(),
              onPageChanged: (index) {
                _pageIndex = index!;
                setState(() {});
              },
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Image.asset(onBoardingImages[index]),
                  ],
                );
              },
            )),
            DotsRow(pageIndex: _pageIndex),
          ],
        ),
      ),
    );
  }
}
