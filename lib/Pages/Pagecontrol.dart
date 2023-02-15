import 'package:custom_navigation_bar/custom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:property/Pages/booking.dart';
import 'package:property/Pages/chat.dart';
import 'package:property/Pages/homepage.dart';
import 'package:property/Pages/profile.dart';

class Pagecontroler extends StatefulWidget {
  const Pagecontroler({super.key});

  @override
  State<Pagecontroler> createState() => _PagecontrolerState();
}

class _PagecontrolerState extends State<Pagecontroler> {
  var _currentIndex = 0;
  Widget _buildTitle() {
    return CustomNavigationBar(
      iconSize: 25.sp,
      selectedColor: Color.fromARGB(255, 62, 38, 136),
      strokeColor: Color(0x30040307),
      unSelectedColor: Color.fromARGB(255, 214, 210, 210),
      backgroundColor: Colors.white,
      items: [
        CustomNavigationBarItem(
          icon: Icon(Icons.home),
          title: Text(
            "Home",
            style: GoogleFonts.inter(fontSize: 13.sp),
          ),
        ),
        CustomNavigationBarItem(
          icon: Icon(Icons.book_rounded),
          title: Text("Booking", style: GoogleFonts.inter(fontSize: 13.sp)),
        ),
        CustomNavigationBarItem(
          icon: Icon(Icons.chat_rounded),
          title: Text("Chat", style: GoogleFonts.inter(fontSize: 13.sp)),
        ),
        CustomNavigationBarItem(
          icon: Icon(Icons.person),
          title: Text("Profile", style: GoogleFonts.inter(fontSize: 13.sp)),
        ),
      ],
      currentIndex: _currentIndex,
      onTap: (index) {
        setState(() {
          _currentIndex = index;
        });
      },
    );
  }

  _getPage() {
    switch (_currentIndex) {
      case 0:
        return Homepage();
      case 1:
        return Booking();
      case 2:
        return Chat();
      case 3:
        return Profile();
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          bottomNavigationBar: _buildTitle(),
          backgroundColor: Colors.white,
          body: _getPage()),
    );
  }
}
