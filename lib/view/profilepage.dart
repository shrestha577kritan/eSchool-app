import 'package:eschoolapp/model/menu_modle.dart';
import 'package:eschoolapp/view/attendance_page.dart';
import 'package:eschoolapp/view/timetable_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final Color StackContainerColor1 = Color(0xff00577C);
  final Color StackContainerColor2 = Colors.white;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            color: StackContainerColor2,
            child: Padding(
              padding: EdgeInsets.only(top: 200.h),
              child: Column(
                children: [
                  _profileSection(),
                  SizedBox(
                    height: 20.h,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 25.w),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Personal Details'),
                        SizedBox(
                          height: 15.h,
                        ),
                        SizedBox(
                          height: 450.h,
                          child: ListView.builder(
                            physics: BouncingScrollPhysics(),
                            shrinkWrap: true,
                            itemCount: 5,
                            itemBuilder: (context, index) {
                              return ListTile(
                                leading: Container(
                                  height: 40.w,
                                  width: 40.w,
                                  decoration: BoxDecoration(
                                    color: Color(0xff01587D),
                                    borderRadius: BorderRadius.circular(8.r),
                                  ),
                                  child: Image.asset(
                                    'assets/profile_images/classroom.png',
                                    color: Colors.white,
                                  ),
                                ),
                                title: Text('Calss'),
                                subtitle: Text('9 A'),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: 190.h,
            width: double.infinity,
            decoration: BoxDecoration(
              color: StackContainerColor1,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(25.r),
                bottomRight: Radius.circular(25.r),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  child: Center(
                    child: Text(
                      'Profile',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                          fontSize: 25.sp),
                    ),
                  ),
                ),
                // SizedBox(width: 200.w,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    IconButton(
                      onPressed: () {
                        showModalBottomSheet(
                          context: context,
                          builder: (context) {
                            return Container(
                              height: 480.h,
                              child: Column(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 20.w, vertical: 15.h),
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
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
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
                                        // Spacer(),
                                        // GestureDetector(
                                        //   onTap: () =>
                                        //       Get.to(() => ProfilePage()),
                                        //   child:Image.asset('assets/profile_images/forward.png', height: 25.h,
                                        //   ),
                                        // ),
                                      ],
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
                                        gridDelegate:
                                            SliverGridDelegateWithFixedCrossAxisCount(
                                          crossAxisCount: 3,
                                        ),
                                        itemBuilder: (context, index) {
                                          return Column(
                                            children: [
                                              Padding(
                                                padding: EdgeInsets.symmetric(
                                                    vertical: 15.h),
                                                child: InkWell(
                                                  onTap: () {
                                                    switch (index) {
                                                      case 0:
                                                        Get.to(() =>
                                                            AttendancePage());
                                                        break;
                                                      case 1:
                                                        Get.to(() =>
                                                            TimeTablePage());
                                                        break;
                                                    }
                                                  },
                                                  child: Container(
                                                    height: 80.h,
                                                    width: 70.w,
                                                    decoration: BoxDecoration(
                                                      boxShadow: [
                                                        BoxShadow(
                                                          color:
                                                              Color(0xff9DABA6),
                                                          offset: Offset(1, 1),
                                                          spreadRadius: 2.r,
                                                          blurRadius: 2.r,
                                                        ),
                                                      ],
                                                      color: Color(0xffE0F6EF),
                                                      borderRadius:
                                                          BorderRadius.all(
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
                                                padding:
                                                    const EdgeInsets.all(8.0),
                                                child: Text(
                                                  menuItems[index].titel,
                                                  style: TextStyle(
                                                      fontSize: 15.sp,
                                                      fontWeight:
                                                          FontWeight.w400,
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
                            );
                          },
                        );
                      },
                      icon: Image.asset(
                        'assets/profile_images/menu.png',
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Column _profileSection() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          height: 135.h,
          child: CircleAvatar(
            radius: 80.r,
            backgroundImage: AssetImage('assets/profileImage.jpg'),
          ),
        ),
        SizedBox(
          height: 10.h,
        ),
        Text(
          'Divy Jani',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20.sp,
            fontWeight: FontWeight.w700,
          ),
        ),
        SizedBox(
          height: 10.h,
        ),
        Text(
          'GR Number - 2023-01-15',
          style: TextStyle(
            color: Colors.black.withOpacity(0.5),
            fontSize: 15.sp,
            fontWeight: FontWeight.w800,
          ),
        ),
        SizedBox(
          height: 20.h,
        ),
        Container(
          width: 340.w,
          child: Divider(),
        )
      ],
    );
  }
}
