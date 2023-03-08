import 'package:custom_navigation_bar/custom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:property/Pages/LaundryBokking/laundryservice.dart';
import 'package:property/Pages/booking.dart';
import 'package:property/Pages/carrepair/carrepair.dart';
import 'package:property/Pages/chat.dart';
import 'package:property/Pages/homepage.dart';
import 'package:property/Pages/plumbing/plumbing.dart';
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
      iconSize: 24.sp,
      selectedColor: Color.fromARGB(255, 62, 38, 136),
      strokeColor: Color(0x30040307),
      unSelectedColor: Color.fromARGB(255, 214, 210, 210),
      backgroundColor: Colors.white,
      items: [
        CustomNavigationBarItem(
          icon: Icon(Icons.home),
          title: Text(
            "Home",
            style: GoogleFonts.inter(fontSize: 11.sp),
          ),
        ),
        CustomNavigationBarItem(
          icon: const Icon(Icons.book_rounded),
          title: Text("Booking", style: GoogleFonts.inter(fontSize: 11.sp)),
        ),
        CustomNavigationBarItem(
          icon: const Icon(Icons.chat_rounded),
          title: Text("Chat", style: GoogleFonts.inter(fontSize: 11.sp)),
        ),
        CustomNavigationBarItem(
          icon: const Icon(Icons.person),
          title: Text("Profile", style: GoogleFonts.inter(fontSize: 11.sp)),
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
        return const Homepage();
      case 1:
        return const Booking();
      case 2:
        return const Plumbing();
      case 3:
        return const Profile();
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          extendBody: true,
          bottomNavigationBar: _buildTitle(),
          backgroundColor: Colors.white,
          body: _getPage()),
    );
  }
}
