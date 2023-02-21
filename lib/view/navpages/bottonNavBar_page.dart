import 'package:eschoolapp/view/assignment_page.dart';
import 'package:eschoolapp/view/home_page.dart';
import 'package:eschoolapp/view/profilepage.dart';
import 'package:flutter/cupertino.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

class MainPage extends StatelessWidget {
  List<Widget> _buildScreens() {
    return [
      HomePage(),
      AssignmentPage(),
      ProfilePage(),
    ];
  }

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon: Icon(CupertinoIcons.house_fill),
        title: ("Home"),
        activeColorPrimary: Color(0xff4870CF),
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(CupertinoIcons.book),
        title: ("Assignemnt"),
        activeColorPrimary: Color(0xff4870CF),
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(CupertinoIcons.person_fill),
        title: ("Profile"),
        activeColorPrimary: Color(0xff4870CF),
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,

      screens: _buildScreens(),
      items: _navBarsItems(),

      navBarStyle:
          NavBarStyle.style6, // Choose the nav bar style with this property.
    );
  }
}
