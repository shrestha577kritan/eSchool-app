import 'package:eschoolapp/view/navpages/bottonNavBar_page.dart';
import 'package:eschoolapp/view/profilepage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../model/assignment_model.dart';

class AssignmentPage extends StatefulWidget {
  const AssignmentPage({super.key});

  @override
  State<AssignmentPage> createState() => _AssignmentPageState();
}

class _AssignmentPageState extends State<AssignmentPage>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController tabController = TabController(
      length: 2,
      vsync: this,
    );
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: Colors.white,
            height: double.infinity,
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.only(),
              child: TabBarView(controller: tabController, children: [
                TabBarViewItems(),
                TabBarViewItems(),
              ]),
            ),
          ),
          Container(
            height: 235.h,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Color(0xff00577C),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(15.r),
                bottomRight: Radius.circular(15.r),
              ),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 45.h, horizontal: 15.w),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                     
                      Spacer(),
                      Text(
                        'Assignments',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                            fontSize: 22.sp),
                      ),
                      SizedBox(
                        width: 100.w,
                      ),
                      Icon(
                        Icons.list,
                        color: Colors.white,
                        size: 35,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  TabBar(
                    controller: tabController,
                    unselectedLabelColor: Colors.white,
                    labelColor: Colors.black,
                    dividerColor: Colors.transparent,
                    isScrollable: true,
                    indicatorColor: Colors.black,
                    indicator: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10.r),
                      ), // Creates border
                      color: Colors.white,
                    ),
                    tabs: [
                      Tabs(text: 'Assigned'),
                      Tabs(text: 'Submitted'),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class TabBarViewItems extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 215.h),
      child: ListView.builder(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.vertical,
        itemCount: assignment.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.symmetric(vertical: 15.h, horizontal: 10.w),
            child: Container(
              height: 135.h,
              width: 70.w,
              // alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Color(0xffF4F6F6),
                shape: BoxShape.rectangle,
                boxShadow: [
                  BoxShadow(
                    color: Colors.white,
                    spreadRadius: 1.r,
                    blurRadius: 0.5.r,
                    offset: Offset(2, 2),
                  )
                ],
                borderRadius: BorderRadius.all(
                  Radius.circular(15.r),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  children: [
                    Container(
                      height: 90.h,
                      width: 70.w,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: assignment[index].boxColor,
                        borderRadius: BorderRadius.circular(10.r),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.white,
                            spreadRadius: 4,
                            blurRadius: 4,
                            offset: Offset(2, 2),
                          )
                        ],
                      ),
                      child: Image.asset(
                        assignment[index].image,
                        color: Colors.white,
                        height: 90.h,
                      ),
                    ),
                    SizedBox(width: 10.w),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                assignment[index].assignmentType,
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 18.sp),
                              ),
                              Text(
                                assignment[index].date,
                                style: TextStyle(
                                  color: Color(0xff6C6C6C),
                                  fontWeight: FontWeight.w400,
                                ),
                              )
                            ],
                          ),
                          SizedBox(height: 1.h),
                          Text(
                            'Please upload only pdf',
                            style: TextStyle(
                              color: Color(0xff0F0F0F),
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          Text(
                            assignment[index].subjectName,
                            style: TextStyle(
                              color: Color(0xff0F0F0F),
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(height: 1.h),
                          Text(
                            assignment[index].dueDate,
                            style: TextStyle(
                              color: Color(0xff0F0F0F),
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

class Tabs extends StatelessWidget {
  final String text;
  const Tabs({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Tab(
      child: Container(
        height: 30.h,
        width: 90.w,
        child: Center(
          child: Text(
            text,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
        ),
      ),
    );
  }
}
