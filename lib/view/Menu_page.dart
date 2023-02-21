import 'package:eschoolapp/model/menu_modle.dart';
import 'package:eschoolapp/view/assignment_page.dart';
import 'package:eschoolapp/view/attendance_page.dart';
import 'package:eschoolapp/view/profilepage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 15.h),
              child: GestureDetector(
                onTap: () => Get.to(() => ProfilePage()),
                child: Row(
                  children: [
                    Container(
                      height: 60.h,
                      width: 70.w,
                      child: CircleAvatar(
                        radius: 90.r,
                        foregroundColor: Colors.black,
                        backgroundImage: AssetImage(
                          'assets/profileImage.jpg',
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 15.w,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Divy M.Jani',
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              color: Colors.black,
                              fontSize: 20.sp),
                        ),
                        SizedBox(height: 1.h),
                        Text(
                          'class: 9 A | Roll No: 13',
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Colors.grey,
                              fontSize: 15.sp),
                        ),
                      ],
                    ),
                    Spacer(),
                    Icon(
                      CupertinoIcons.forward,
                      size: 25,
                    ),
                  ],
                ),
              ),
            ),
            Container(
              width: 330.w,
              child: Divider(
                thickness: 1,
                color: Colors.grey.withOpacity(0.5),
              ),
            ),
            SizedBox(height: 10.h),
            Expanded(
              child: Container(
                child: GridView.builder(
                  physics: BouncingScrollPhysics(),
                  itemCount: menuItems.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                  ),
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 15.h),
                          child: InkWell(
                            onTap: () {
                              switch (index) {
                                case 0:
                                  Get.to(() => AttendancePage());
                                  break;
                                case 1:
                                  Get.to(() => AssignmentPage());
                                  break;
                                case 3:
                                  Get.to(() => ProfilePage());
                                  break;
                              }
                            },
                            // onTap: () => Get.to(() => TimeTablePage()),
                            child: Container(
                              height: 80.h,
                              width: 70.w,
                              decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: Color(0xff9DABA6),
                                    offset: Offset(1, 1),
                                    spreadRadius: 2.r,
                                    blurRadius: 2.r,
                                  ),
                                ],
                                color: Color(0xffE0F6EF),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(15.r),
                                ),
                              ),
                              child: Image.asset(
                                menuItems[index].image,
                                color: Color(0xff3F9FAA),
                                height: 18.h,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            menuItems[index].titel,
                            style: TextStyle(
                                fontSize: 15.sp,
                                fontWeight: FontWeight.w400,
                                color: Colors.black),
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
