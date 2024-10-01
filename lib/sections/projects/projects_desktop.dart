import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:protfolio/utils/device_size.dart';

class ProjectsDesktop extends StatelessWidget {
  const ProjectsDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffB6D8D2),
      body: Center(
        child: SizedBox(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Projects",
                style: TextStyle(
                  fontFamily: 'Montserrat',
                  color: Color(0xff137E69),
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              const Text(
                "Stuf I'm in loved working with",
                style: TextStyle(
                    fontFamily: 'Montserrat',
                    color: Color(0xff137E69),
                    fontWeight: FontWeight.w400,
                    fontSize: 12),
              ),
              const SizedBox(
                height: 64,
              ),
              getDeviceSize(context).width > 1120
                  ? const Wrap(
                      spacing: 32,
                      runSpacing: 32,
                      children: [
                        ProjectCard(),
                        ProjectCard(),
                        ProjectCard(),
                        ProjectCard(),
                        ProjectCard(),
                        ProjectCard(),
                      ],
                    )
                  : CarouselSlider(
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
      ),
    );
  }
}

class ProjectCard extends StatelessWidget {
  const ProjectCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      height: 250,
      decoration: BoxDecoration(
        color: const Color(0xff265A57),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.all(
                  Radius.circular(10),
                ),
                child: Image.asset(
                  "assets/images/g.png",
                  fit: BoxFit.cover,
                  width: 350,
                  height: 150,
                ),
              ),
              Positioned(
                top: 8,
                left: 8,
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.white, // Color(0xff292A2E),
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: const Text(
                    "Product",
                    style: TextStyle(
                        fontFamily: 'Montserrat',
                        color: Colors.black,
                        fontSize: 12,
                        fontWeight: FontWeight.w400),
                  ),
                ),
              )
            ],
          ),
          Container(
            width: 350,
            height: 100,
            padding: const EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
              color: const Color(0xff265A57),
              borderRadius: BorderRadius.circular(10),
            ),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "Funotel",
                  style: TextStyle(
                      fontFamily: 'Montserrat',
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w500),
                ),
                Row(
                  children: [
                    ProjectURLButtonWidget(
                      iconPath: "assets/icons/google_play.svg",
                      text: "Play",
                    ),
                    ProjectURLButtonWidget(
                      iconPath: "assets/icons/github.svg",
                      text: "Github",
                    ),
                    ProjectURLButtonWidget(
                      iconPath: "assets/icons/web.svg",
                      text: "Web",
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class ProjectURLButtonWidget extends StatelessWidget {
  const ProjectURLButtonWidget(
      {super.key, required this.iconPath, required this.text});

  final String iconPath;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 10),
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: Row(
        children: [
          SvgPicture.asset(
            iconPath,
            width: 20,
            height: 20,
          ),
          const SizedBox(
            width: 5,
          ),
          Text(text,
              style: const TextStyle(
                  fontFamily: 'Montserrat',
                  color: Colors.black,
                  fontSize: 12,
                  fontWeight: FontWeight.w400)),
        ],
      ),
    );
  }
}
