import 'package:flutter/material.dart';
import 'package:team1_e1/core/theming/colors.dart';
import 'package:team1_e1/features/home/screens/category_screen.dart';
import 'package:team1_e1/features/home/screens/home_screen.dart';


class LayoutScreen extends StatefulWidget {
  const LayoutScreen({super.key});

  @override
  State<LayoutScreen> createState() => _LayoutScreenState();
}

class _LayoutScreenState extends State<LayoutScreen> {
  int currentIndex = 0;


  List<Widget> screens =[
    CategoryScreen(),
    HomeScreen(),

  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.backgroundColor,
        // bottomNavigationBar: BottomNavigationBar(
        //   type: BottomNavigationBarType.fixed,
        //   backgroundColor: const Color(0xff211F26),
        //   unselectedItemColor: Colors.white,
        //   currentIndex: currentIndex,
        //   onTap: (index) {
        //     setState(() {
        //       currentIndex = index;
        //     });
        //   },
        //   items: const [
        //     BottomNavigationBarItem(
        //         icon: Icon(
        //           Icons.list_alt_rounded,
        //         ),
        //         label: 'Categories'),
        //     BottomNavigationBarItem(
        //         icon: Icon(
        //           Icons.home_filled,
        //         ),
        //         label: 'Home'),
        //     BottomNavigationBarItem(
        //         icon: Icon(
        //           Icons.account_circle_outlined,
        //         ),
        //         label: 'Profile'),
        //   ],
        // ),
        body:screens[currentIndex]
    );
  }
}