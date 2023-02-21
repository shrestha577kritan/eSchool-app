import 'package:eschoolapp/model/sliderInfo_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../model/subjects_model.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<SubjectsModel> subjects = [];
  List<SliderInfoModel> sliderInfo = [];

  void _getInitialInfo() {
    subjects = SubjectsModel.getSubjectInfo();
    sliderInfo = SliderInfoModel.getInfo();
  }

  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    _getInitialInfo();
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: Colors.white,
            height: double.infinity,
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _sliderSection(),
                SizedBox(height: 1.5.h),
                Center(
                  child: buildIndex(activeIndex),
                ),
                SizedBox(height: 15.h),
                Padding(
                  padding: EdgeInsets.only(left: 35.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'My Subjects',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 30.sp,
                            fontWeight: FontWeight.w500,
                            letterSpacing: 1),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 1.h,
                ),
                _subjectSection()
              ],
            ),
          ),
          Container(
            height: 180.h,
            decoration: BoxDecoration(
              color: Color(0xff205578),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10.r),
                bottomRight: Radius.circular(10.r),
              ),
            ),
            child: _userProfileSection(),
          ),
        ],
      ),
    );
  }

  Padding _userProfileSection() {
    return Padding(
      padding: EdgeInsets.only(
        left: 36.w,
        top: 60.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          CircleAvatar(
            radius: 35.r,
            backgroundColor: Colors.white,
            child: CircleAvatar(
              backgroundImage: AssetImage('assets/profileImage.jpg'),
              radius: 33.r,
            ),
          ),
          SizedBox(
            width: 5.w,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 8.w,
              top: 40.h,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Divy M. Jani',
                  style: TextStyle(
                    color: Color(0xffD1EFFA),
                    fontWeight: FontWeight.w500,
                    fontSize: 25.sp,
                  ),
                ),
                SizedBox(
                  height: 0.5.h,
                ),
                IntrinsicHeight(
                  child: Row(
                    children: [
                      Text(
                        'Class:9 A | Roll No: 13',
                        style: TextStyle(
                          color: Color(0xffD1EFFA),
                          fontWeight: FontWeight.w500,
                          fontSize: 15.sp,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Expanded _subjectSection() {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.only(top: 10.h, left: 10.w, right: 10.w),
        child: Container(
          child: GridView.builder(
            physics: BouncingScrollPhysics(),
            itemCount: subjects.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
            ),
            itemBuilder: (context, index) {
              return GestureDetector(
               
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 10.w, right: 10.w),
                      child: Container(
                        height: 100.h,
                        decoration: BoxDecoration(
                          color: subjects[index].boxColor,
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                        ),
                        child: Image.asset(
                          subjects[index].image,
                          height: 10.h,
                          color: Colors.white,
                          // fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 8.h,
                    ),
                    Text(
                      subjects[index].subjectName,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }

  Padding _sliderSection() {
    return Padding(
      padding: EdgeInsets.only(top: 190.h),
      child: Center(
        child: Container(
          height: 260.h,
          width: 500.w,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(10.r),
            ),
          ),
          child: CarouselSlider.builder(
            options: CarouselOptions(
              autoPlay: true,
              viewportFraction: 1,
              pageSnapping: true,
              onPageChanged: (index, reason) {
                setState(() {
                  activeIndex = index;
                });
              },
            ),
            itemCount: sliderInfo.length,
            itemBuilder: (context, index, realIndex) {
              return Padding(
                padding: const EdgeInsets.all(5.0),
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 20.h),
                      child: Container(
                        height: 200.h,
                        width: 300.w,
                        decoration: BoxDecoration(
                          color: Color(0xffFFEED2),
                          borderRadius: BorderRadius.all(
                            Radius.circular(10.r),
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(left: 10.w, top: 15.h),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Exam Date',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 30.sp),
                              ),
                              SizedBox(
                                height: 1.h,
                              ),
                              Text(
                                'Your exam start date is',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20.sp,
                                    fontWeight: FontWeight.w500),
                              ),
                              SizedBox(height: 5.h),
                              Text(
                                sliderInfo[index].date,
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 22.sp,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 50.h,
                      left: 150.w,
                      child: Container(
                        height: 220.h,
                        width: 200.w,
                        child: Image.asset(
                          sliderInfo[index].imge,
                        ),
                      ),
                    )
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}

class buildIndex extends StatelessWidget {
  const buildIndex(
    this.activeIndex,
  );

  final int activeIndex;

  @override
  Widget build(BuildContext context) {
    return AnimatedSmoothIndicator(
      activeIndex: activeIndex,
      count: 4,
      effect: JumpingDotEffect(
        activeDotColor: Color(0xff205578),
        dotHeight: 7,
        dotWidth: 7,
      ),
    );
  }
}
