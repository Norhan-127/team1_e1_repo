import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:team1_e1/core/theming/styles.dart';
import 'package:team1_e1/core/theming/svg_images.dart';
import 'package:team1_e1/features/crew/ui/screen/crew_screen.dart';
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
     const CrewScreen(),

      Container(
        color: Colors.brown,
      ),
      Container(
        color: Colors.black,
      ),
      Container(
        color: Colors.green,
      ),
      Container(
        color: Colors.white,
      ),
    ];
  }

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        contentPadding: 1,
        icon: SvgPicture.asset(SvgImages.bottomNavCapsule,color: AppColors.whiteColor,),
        // title: 'Capsule',
        activeColorPrimary: AppColors.whiteColor,
        inactiveColorPrimary: AppColors.whiteColor,
        iconSize: 15,
        textStyle: TextStyles.poppins17LightWhite,
      ),
      PersistentBottomNavBarItem(
        contentPadding: 1,
        icon: SvgPicture.asset(SvgImages.bottomNavRocket,color:  _controller.index == 1 ? Colors.white : Colors.white.withOpacity(0.5),),
        // title: 'Capsule',
        activeColorPrimary: AppColors.whiteColor,
        inactiveColorPrimary: AppColors.whiteColor,
        iconSize: 15,
        textStyle: TextStyles.poppins17LightWhite,
      ),
      PersistentBottomNavBarItem(
        contentPadding: 1,
        icon: SvgPicture.asset(SvgImages.bottomNavDragon,color:  _controller.index == 2 ? Colors.white : Colors.white.withOpacity(0.5),),
        // title: 'Capsule',
        iconSize: 15,
        activeColorPrimary: AppColors.whiteColor,
        inactiveColorPrimary: AppColors.whiteColor,
        textStyle: TextStyles.poppins17LightWhite,
      ),
      PersistentBottomNavBarItem(
        contentPadding: 1,
        icon: SvgPicture.asset(SvgImages.bottomNavCrew,color:  _controller.index == 3 ? Colors.white : Colors.white.withOpacity(0.5),),
        // title: 'Capsule',
        iconSize: 15,
        activeColorPrimary: AppColors.whiteColor,
        inactiveColorPrimary: AppColors.whiteColor,
        textStyle: TextStyles.poppins17LightWhite,
      ),
      PersistentBottomNavBarItem(
        contentPadding: 1,
        icon: SvgPicture.asset(SvgImages.bottomNavLaunch,color:  _controller.index == 4 ? Colors.white : Colors.white.withOpacity(0.5),),
        // title: 'Capsule',
        iconSize: 15,
        activeColorPrimary: AppColors.whiteColor,
        inactiveColorPrimary: AppColors.whiteColor,
        textStyle: TextStyles.poppins17LightWhite,
      ),

    ];
  }


  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
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
      ),
    );
  }
}
