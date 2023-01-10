import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:online_course_app_ui/constants/app_constants.dart';
import 'package:online_course_app_ui/widgets/course_item.dart';
import 'package:online_course_app_ui/widgets/lecture_item.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppConstants.primaryColor,
      body: SafeArea(
          child: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        physics: const BouncingScrollPhysics(),
        children: [
          Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Online",
                  style: GoogleFonts.roboto(
                      fontSize: 36,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  "Master Class",
                  style: GoogleFonts.roboto(
                      fontSize: 36,
                      color: Colors.white,
                      fontWeight: FontWeight.w500),
                ),
              ]),
          const SizedBox(
            height: 22,
          ),
          SizedBox(
            height: 349,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(),
                itemBuilder: (context, index) {
                  return const CourseItem(
                      headline: "Recommended",
                      title: "UI/UX DESIGNER\nBEGINNER",
                      startColor: 0xff9288e4,
                      endColor: 0xff534ea7,
                      image: "assets/images/img_saly10.png");
                }),
          ),
          const SizedBox(
            height: 34,
          ),
          Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Free online class",
                  style: GoogleFonts.roboto(
                      fontSize: 25,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  "From over 80 Lectures",
                  style: GoogleFonts.roboto(
                      fontSize: 14,
                      color: const Color(0xff9c9a9a),
                      fontWeight: FontWeight.w500),
                ),
              ]),
          ListView.builder(
            itemCount: 5,
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            itemBuilder: (context, index) {
            return const LectureItem(
                image: "assets/images/img_saly24.png",
                title: 'Flutter Developer',
                duration: "8 Hours",
                rating: 3.0);
          })
        ],
      )),
    );
  }
}
