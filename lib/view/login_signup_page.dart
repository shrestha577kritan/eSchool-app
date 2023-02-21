import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'navpages/bottonNavBar_page.dart';


class LoginSignUpPage extends StatefulWidget {
  const LoginSignUpPage({super.key});

  @override
  State<LoginSignUpPage> createState() => _LoginSignUpPageState();
}

class _LoginSignUpPageState extends State<LoginSignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: Color(0xff205578),
            height: double.infinity,
            width: double.infinity,
            alignment: Alignment.topCenter,
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 80.h),
              child: Image.asset(
                'assets/loginImage.png',
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 410,
            ),
            child: Container(
              height: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xffFFFFFF),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20.r),
                    topRight: Radius.circular(20.r)),
              ),
              width: double.infinity,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 25.w),
                child: Column(
                  children: [
                    SizedBox(height: 60.h),
                    Text(
                      'eSchool',
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 35.sp,
                          color: Color(0xff1C1C1C)),
                    ),
                      SizedBox(height: 5.h),
                    Center(
                      child: Text(
                        'eSchool Serve You Virtual Education',
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 15.sp,
                          color: Color(0xff2E2E2E),
                        ),
                      ),
                    ),
                    Center(
                      child: Text(
                        'At Your Home',
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 15.sp,
                          color: Color(0xff2E2E2E),
                        ),
                      ),
                    ),
                    SizedBox(height: 15.h),
                    ElevatedButton(
                      onPressed: () {
                          Get.to(() => MainPage());
                      },
                      child: Text(
                        'Login as Student',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                            fontSize: 15.sp),
                      ),
                      
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xff205578),
                        
                        minimumSize: Size(280.w, 45.h),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.r)),
                      ),
                    ),
                    SizedBox(height: 10.h),
                    OutlinedButton(
                      onPressed: () {
                        Get.to(() => MainPage());
                      },
                      child: Text(
                        'Login as Parent ',
                        style: TextStyle(
                            color: Color(0xff27576A),
                            fontWeight: FontWeight.w400,
                            fontSize: 15.sp),
                      ),
                      style: OutlinedButton.styleFrom(
                         minimumSize: Size(280.w, 45.h),
                        side: BorderSide(
                          color: Color(0xff27576A),
                        ),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.r)),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
