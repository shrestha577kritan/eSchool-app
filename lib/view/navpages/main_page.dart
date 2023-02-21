// import 'package:eschoolapp/view/Menu_page.dart';
// import 'package:eschoolapp/view/assignment_page.dart';
// import 'package:eschoolapp/view/home_page.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';

// class MainPage extends StatefulWidget {
//   const MainPage({super.key});

//   @override
//   State<MainPage> createState() => _MainPageState();
// }

// class _MainPageState extends State<MainPage> {
//   int _index = 0;
//   List pages = [
//     HomePage(),
//     AssignmentPage(),
//     MenuPage(),
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       bottomNavigationBar: BottomNavigationBar(
//         backgroundColor: Colors.white,
//         selectedItemColor: Colors.black,
//         unselectedItemColor: Colors.grey.withOpacity(0.5),
//         showSelectedLabels: true,
//         showUnselectedLabels: false,
//         type: BottomNavigationBarType.fixed,
//         elevation: 0,
//         onTap: (value) {
//           setState(() {
//             _index = value;
//           });
//         },
//         currentIndex: _index,
//         items: [
//           BottomNavigationBarItem(
//             icon: Image.asset(
//               'assets/nav_icons/home.png',
//               height: 18.h,
//             ),
//             label: 'Home',
//           ),
//           BottomNavigationBarItem(
//             icon: Image.asset(
//               'assets/nav_icons/assignment.png',
//               height: 18.h,
//             ),
//             label: 'Assignment',
//           ),
//           BottomNavigationBarItem(
//             icon: Image.asset(
//               'assets/nav_icons/menu.png',
//               height: 18.h,
//             ),
//             label: 'Menu',
//           ),
//         ],
//       ),
//       body: pages[_index],
//     );
//   }
// }
