import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'Pages/Pagecontrol.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(360, 814),
      builder: (context, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Property Maintenance',
        home: Pagecontroler(),
        themeMode: ThemeMode.dark,
      ),
    );
  }
}
