import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class TimeTablePage extends StatefulWidget {
  const TimeTablePage({super.key});

  @override
  State<TimeTablePage> createState() => _TimeTablePageState();
}

class _TimeTablePageState extends State<TimeTablePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            color: Colors.white,
            child: DefaultTabController(
              length: 7,
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 200.h),
                    child: TabBar(
                      unselectedLabelColor: Color(0xff00577C),
                      isScrollable: true,
                      indicatorColor: Colors.transparent,
                      indicator: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(8.r),
                        ), // Creates border
                        color: Color(0xff00577C),
                      ),
                      tabs: [
                        Tab(
                          child: Text(
                            'Mon',
                            style: TextStyle(fontWeight: FontWeight.w500),
                          ),
                        ),
                        Tab(
                          child: Text(
                            'Tue',
                            style: TextStyle(fontWeight: FontWeight.w500),
                          ),
                        ),
                        Tab(
                          child: Text(
                            'Wed',
                            style: TextStyle(fontWeight: FontWeight.w500),
                          ),
                        ),
                        Tab(
                          child: Text(
                            'Thu',
                            style: TextStyle(fontWeight: FontWeight.w500),
                          ),
                        ),
                        Tab(
                          child: Text(
                            'Fri',
                            style: TextStyle(fontWeight: FontWeight.w500),
                          ),
                        ),
                        Tab(
                          child: Text(
                            'Sat',
                            style: TextStyle(fontWeight: FontWeight.w500),
                          ),
                        ),
                        Tab(
                          child: Text(
                            'Sun',
                            style: TextStyle(fontWeight: FontWeight.w500),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        // color: Colors.yellow,
                        child: TabBarView(children: [
                          TabBarViewItems(),
                          TabBarViewItems(),
                          TabBarViewItems(),
                          TabBarViewItems(),
                          TabBarViewItems(),
                          TabBarViewItems(),
                          TabBarViewItems(),
                        ]),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Container(
            height: 160.h,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Color(0xff00577C),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(18.r),
                bottomRight: Radius.circular(18.r),
              ),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.w),
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {
                      Get.back();
                    },
                    icon: Image.asset(
                      'assets/back.png',
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(width: 75.w),
                  Center(
                    child: Text(
                      'Timetable',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                          fontSize: 25.sp),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 132.h,
            left: 25.w,
            right: 25.w,
            child: Container(
              height: 40.h,
              width: 50.w,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(10.r)),
              ),
              child: Center(
                child: Text(
                  'Class - 9 A',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 15.sp),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class TabBarViewItems extends StatelessWidget {
  final List subject = [
    [
      'Computer',
      'assets/subjects/image1.png',
      Color(0xffFFB46B),
      '08:00 Am - 09:00 Am',
      'kritan Shrestha'
    ],
    [
      'English',
      'assets/subjects/image2.png',
      Color(0xff67A4FD),
      '09:00 Am - 10:00 Am',
      'Sweta Panda'
    ],
    [
      'Art',
      'assets/subjects/image3.png',
      Color(0xffFE696E),
      '10:00 Am - 11:00 Am',
      'Jignesha Majethiya'
    ],
    [
      'Music',
      'assets/subjects/image4.png',
      Color(0xffAE91FF),
      '11:00 Am - 12:00 Am',
      ' vimal Jani'
    ],
    [
      'History',
      'assets/subjects/image5.png',
      Color(0xff1D87FC),
      '12:00 Am - 1:00 PM',
      'Rakesh Jha'
    ],
    [
      'Maths',
      'assets/subjects/image6.png',
      Color(0xffF874AC),
      '1:00 Am - 2:00 PM',
      'Rakesh Jha'
    ],
    [
      'Science',
      'assets/subjects/image7.png',
      Color(0xffED931E),
      '2:00 Am - 3:00 PM',
      'Rakesh Jha'
    ],
    [
      'Geography',
      'assets/subjects/image8.png',
      Color(0xff39C692),
      '12:00 Am - 1:00 PM',
      'Rakesh Jha'
    ],
    [
      'Biology',
      'assets/subjects/image9.png',
      Color(0xff4C5B7F),
      '12:00 Am - 1:00 PM',
      'Rakesh Jha'
    ],
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: subject.length,
      itemBuilder: (context, index) {
        return Row(
          children: [
            Padding(
              padding: EdgeInsets.all(15),
              child: Container(
                height: 55.h,
                width: 60.w,
                decoration: BoxDecoration(
                  color: subject[index][2],
                  borderRadius: BorderRadius.all(
                    Radius.circular(10.r),
                  ),
                ),
                child: Image.asset(subject[index][1]),
              ),
            ),
            SizedBox(width: 5.w),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  subject[index][3].toString(),
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w800,
                      fontSize: 15.sp),
                ),
                SizedBox(height: 5.h),
                Text(
                  subject[index][0].toString(),
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 12.sp,
                    color: Colors.grey[700],
                  ),
                ),
                SizedBox(height: 5.h),
                Text(
                  subject[index][4].toString(),
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 12.sp,
                    color: Colors.grey[700],
                  ),
                ),
              ],
            ),
          ],
        );
      },
    );
  }
}
