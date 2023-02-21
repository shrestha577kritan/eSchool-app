import 'package:eschoolapp/view/profilepage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:table_calendar/table_calendar.dart';

class AttendancePage extends StatefulWidget {
  const AttendancePage({super.key});

  @override
  State<AttendancePage> createState() => _AttendancePageState();
}

class _AttendancePageState extends State<AttendancePage> {
  final Lastday = DateTime.now();
  final today = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 200),
            child: Container(
              height: double.infinity,
              width: double.infinity,
              color: Colors.white,
              child: Column(
                children: [
                  _caldenderSection(),
                  SizedBox(
                    height: 2.h,
                  ),
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 25.w, vertical: 15.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        _builtContainer(
                            text: 'Total Presant',
                            number: '4',
                            boxColor: Color(0xff00CF95)),
                        _builtContainer(
                            textColor: true,
                            text: 'Total Absent',
                            number: '2',
                            boxColor: Color(0xffFF5C68)),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: 160.h,
            width: double.infinity,
            child: Scaffold(
              backgroundColor: Color(0xff00577C),
              appBar: AppBar(
                backgroundColor: Color(0xff00577C),
                elevation: 0,
                centerTitle: true,
                title: Text(
                  'Attendance',
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 22.sp,
                    color: Colors.white,
                  ),
                ),
                leading: IconButton(
                  onPressed: () {
                    Get.back();
                  },
                  icon: Image.asset(
                    'assets/back.png',
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: 120.h,
            left: 20.w,
            right: 20.w,
            child: Card(
              child: Container(
                height: 60.h,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(10.r)),
                ),
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Color(0xff00577C),
                            borderRadius: BorderRadius.all(Radius.circular(5.r)),
                          ),
                          child: Icon(
                            CupertinoIcons.back,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          'June 2023',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                              fontSize: 20.sp),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: Color(0xff00577C),
                            borderRadius: BorderRadius.all(Radius.circular(5.r)),
                          ),
                          child: Icon(
                            CupertinoIcons.forward,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Container _builtContainer(
      {required String text,
      required String number,
      required boxColor,
      bool? textColor}) {
    return Container(
      height: 150.h,
      width: 111.w,
      decoration: BoxDecoration(
        color: boxColor,
        borderRadius: BorderRadius.all(Radius.circular(15.r)),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 15.h),
            child: Center(
              child: Text(
                text,
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 16.sp),
              ),
            ),
          ),
          Container(
            height: 35.h,
            width: 30.w,
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
            ),
            child: Center(
              child: Text(
                number,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: textColor == null ? Color(0xff00CF95) : Colors.red,
                  fontSize: 20.sp,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Container _caldenderSection() {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 12.h, horizontal: 5.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.r),
        color: Colors.white,
      ),
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: TableCalendar(
          // daysOfWeekVisible: true,
          headerVisible: false,
          calendarFormat: CalendarFormat.month,
          sixWeekMonthsEnforced: true,
          focusedDay: today,
          firstDay: DateTime(2023, 02, 2),
          lastDay: Lastday,
        ),
      ),
    );
  }
}
