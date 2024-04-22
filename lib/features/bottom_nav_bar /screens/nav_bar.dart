import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:team1_e1/core/theming/styles.dart';
import 'package:team1_e1/core/theming/svg_images.dart';
import 'package:team1_e1/features/crew/ui/screen/crew_screen.dart';
import 'package:team1_e1/features/rockets/ui/screens/rockets_screen.dart';
import '../../../core/theming/colors.dart';

class NavBarScreen extends StatefulWidget {
  const NavBarScreen({super.key});

  @override
  State<NavBarScreen> createState() => _NavBarScreenState();
}

class _NavBarScreenState extends State<NavBarScreen> {
  final _controller = PersistentTabController();

  List<Widget> _buildScreens() {
    return [
      Container(
        color: Colors.brown,
      ),
      const RocketsScreen(),
      Container(
        color: Colors.green,
      ),
      const CrewScreen(),
      Container(
        color: Colors.white,
      ),
    ];
  }

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon: SvgPicture.asset(
          SvgImages.bottomNavCapsule,
          color: AppColors.whiteColor,
        ),
        activeColorPrimary: AppColors.whiteColor,
        inactiveColorPrimary: AppColors.whiteColor,
        iconSize: 10,
        // textStyle: TextStyles.poppins17LightWhite,
      ),
      PersistentBottomNavBarItem(
        icon: SvgPicture.asset(
          SvgImages.bottomNavRocket,
          color: AppColors.whiteColor,
        ),
        activeColorPrimary: AppColors.whiteColor,
        inactiveColorPrimary: AppColors.whiteColor,
        iconSize: 5,
        // textStyle: TextStyles.poppins17LightWhite,
      ),
      PersistentBottomNavBarItem(
        icon: SvgPicture.asset(
          SvgImages.bottomNavDragon,
          color: AppColors.whiteColor,
        ),
        iconSize: 5,
        activeColorPrimary: AppColors.whiteColor,
        inactiveColorPrimary: AppColors.whiteColor,
        textStyle: TextStyles.poppins17LightWhite,
      ),
      PersistentBottomNavBarItem(
        icon: SvgPicture.asset(
          SvgImages.bottomNavCrew,
          color: AppColors.whiteColor,
        ),
        iconSize: 10,
        activeColorPrimary: AppColors.whiteColor,
        inactiveColorPrimary: AppColors.whiteColor,
        textStyle: TextStyles.poppins17LightWhite,
      ),
      PersistentBottomNavBarItem(
        icon: SvgPicture.asset(
          SvgImages.bottomNavLaunch,
          color: AppColors.whiteColor,
        ),
        iconSize: 10,
        activeColorPrimary: AppColors.whiteColor,
        inactiveColorPrimary: AppColors.whiteColor,
        textStyle: TextStyles.poppins17LightWhite,
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: SizedBox(
          width: double.infinity,
          child: SvgPicture.asset(
            SvgImages.spaceXLogoWhite,
            alignment: Alignment.center,
            width: 130.w,
            height: 130.h,
          ),
        ),
        actions:   [Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.w),
          child: const Icon(Icons.menu,color: AppColors.whiteColor,),
        )],
      ),
      body: PersistentTabView(
        context,
        controller: _controller,
        screens: _buildScreens(),
        items: _navBarsItems(),
        confineInSafeArea: true,
        backgroundColor: Colors.black,
        handleAndroidBackButtonPress: true,
        resizeToAvoidBottomInset: true,
        stateManagement: true,
        hideNavigationBarWhenKeyboardShows: true,
        decoration: NavBarDecoration(
          colorBehindNavBar: Colors.transparent,
          border: Border.all(color: AppColors.darkBlueGrey, width: 0.5),
        ),
        popAllScreensOnTapOfSelectedTab: true,
        popActionScreens: PopActionScreensType.all,
        itemAnimationProperties: const ItemAnimationProperties(
          duration: Duration(milliseconds: 200),
          curve: Curves.ease,
        ),
        screenTransitionAnimation: const ScreenTransitionAnimation(
          animateTabTransition: true,
          curve: Curves.ease,
          duration: Duration(milliseconds: 200),
        ),
        navBarStyle: NavBarStyle.style3,
      ),
    );
  }
}
