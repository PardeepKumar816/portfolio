import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:protfolio/sections/projects/projects_desktop.dart';

class ProjectsTablet extends StatelessWidget {
  const ProjectsTablet({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffB6D8D2),
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 64,
            ),
            Padding(
              padding: EdgeInsets.only(left: 24.w),
              child: Text(
                "Projects",
                style: TextStyle(
                  fontFamily: 'Montserrat',
                  color: const Color(0xff137E69),
                  fontWeight: FontWeight.bold,
                  fontSize: 22.h,
                ),
              ),
            ),
            SizedBox(
              height: 6.h,
            ),
            Padding(
              padding: EdgeInsets.only(left: 24.w),
              child: Text(
                "Stuf I'm in loved working with",
                style: TextStyle(
                    fontFamily: 'Montserrat',
                    color: const Color(0xff137E69),
                    fontWeight: FontWeight.w400,
                    fontSize: 14.h),
              ),
            ),
            const SizedBox(
              height: 64,
            ),
            CarouselSlider(
              items: List.generate(5, (i) {
                return const ProjectCard();
              }),
              options: CarouselOptions(
                autoPlay: true,
                height: 400.h,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
