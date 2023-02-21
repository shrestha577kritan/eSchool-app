import 'package:eschoolapp/view/profilepage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:google_fonts/google_fonts.dart';
import 'view/login_signup_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 1024),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return GetMaterialApp(
          
          theme: ThemeData(
            useMaterial3: true,
            textTheme: GoogleFonts.interTextTheme(Theme.of(context).textTheme),),
          debugShowCheckedModeBanner: false,
          title: 'eSchool App',
          home: LoginSignUpPage(),
        );
      },
    );
  }
}


