import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:protfolio/utils/device_size.dart';
import '../../widgets/multi_line_text_container.dart';
import '../../widgets/social_container.dart';

class HomeDesktop extends StatelessWidget {
  const HomeDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xffFBCCA9),
        body: Builder(builder: (context) {
          return Column(
            children: [
              Padding(
                padding: EdgeInsets.only(
                    left: getDeviceSize(context).width * 0.1,
                    right: getDeviceSize(context).width * 0.05,
                    top: getDeviceSize(context).width * 0.03),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Row(
                      children: [
                        Text(
                          "< ",
                          style: TextStyle(
                            fontSize: 20,
                            color: Color(0xffB96220),
                          ),
                        ),
                        Text(
                          "Pardeep",
                          style: TextStyle(
                            fontFamily: 'Agustina',
                            fontSize: 24,
                            fontWeight: FontWeight.w400,
                            color: Color(0xffB96220),
                          ),
                        ),
                        Text(
                          " >",
                          style: TextStyle(
                            fontSize: 20,
                            color: Color(0xffB96220),
                          ),
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 64),
                      child: Row(
                        children: [
                          TextButton(
                              onPressed: () {},
                              child: const Text(
                                "About",
                                style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontSize: 16,
                                  color: Color(0xffB96220),
                                ),
                              )),
                          const SizedBox(width: 32),
                          TextButton(
                              onPressed: () {},
                              child: const Text(
                                "Tech",
                                style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontSize: 16,
                                  color: Color(0xffB96220),
                                ),
                              )),
                          const SizedBox(width: 32),
                          // SizedBox(
                          //   width: getDeviceSize(context).width * 0.1,
                          // ),
                          TextButton(
                              onPressed: () {},
                              child: const Text(
                                "Projects",
                                style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontSize: 16,
                                  color: Color(0xffB96220),
                                ),
                              )),
                          const SizedBox(width: 32),
                          // SizedBox(
                          //   width: getDeviceSize(context).width * 0.1,
                          // ),
                          TextButton(
                              onPressed: () {},
                              child: const Text(
                                "Experience",
                                style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontSize: 16,
                                  color: Color(0xffB96220),
                                ),
                              )),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  right: getDeviceSize(context).width * 0.01,
                ),
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                    width: getDeviceSize(context).width * 0.06,
                    height: getDeviceSize(context).width * 0.06,
                    decoration: BoxDecoration(
                      color: const Color(0xffB96220).withOpacity(0.3),
                      shape: BoxShape.circle,
                    ),
                    child: GestureDetector(
                      child: Image.asset(
                        "assets/icons/github.png",
                        width: getDeviceSize(context).width * 0.01,
                        height: getDeviceSize(context).width * 0.01,
                        fit: BoxFit.scaleDown,
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                          left: getDeviceSize(context).width * 0.1),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            alignment: Alignment.center,
                            width: 220,
                            height: 32,
                            decoration: const BoxDecoration(
                                color: Color(0xffB96220),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(4))),
                            child: const Text(
                              "Full Stack Flutter Expert",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontFamily: 'Montserrat',
                                color: Colors.white,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Text(
                            "Pardeep",
                            style: Theme.of(context)
                                .textTheme
                                .headlineLarge!
                                .copyWith(
                                    fontWeight: FontWeight.w700,
                                    color: Colors.black,
                                    fontFamily: 'Montserrat'),
                          ),
                          Text(
                            "Kumar",
                            style: Theme.of(context)
                                .textTheme
                                .headlineLarge!
                                .copyWith(
                                    fontWeight: FontWeight.w200,
                                    color: Colors.white,
                                    letterSpacing: 10,
                                    height: 1.0,
                                    fontFamily: 'Montserrat'),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Icon(
                                Icons.play_arrow,
                                color: const Color(0xffB96220),
                                size: getDeviceSize(context).width * 0.02,
                              ),
                              AnimatedTextKit(
                                animatedTexts: [
                                  TyperAnimatedText('Student,',
                                      textStyle: const TextStyle(
                                          fontFamily: 'Montserrat')),
                                  TyperAnimatedText('Software Engineer,',
                                      textStyle: const TextStyle(
                                          fontFamily: 'Montserrat',
                                          fontWeight: FontWeight.w400)),
                                  TyperAnimatedText('Flutter Developer,',
                                      textStyle: const TextStyle(
                                          fontFamily: 'Montserrat',
                                          fontWeight: FontWeight.w400)),
                                  TyperAnimatedText('MERN Stack Developer,',
                                      textStyle: const TextStyle(
                                          fontFamily: 'Montserrat',
                                          fontWeight: FontWeight.w400)),
                                  TyperAnimatedText('Core Java Developer,',
                                      textStyle: const TextStyle(
                                          fontFamily: 'Montserrat',
                                          fontWeight: FontWeight.w400)),
                                ],
                              ),
                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: getDeviceSize(context).width * 0.01),
                            child: Row(
                              children: [
                                Container(
                                  width: getDeviceSize(context).width * 0.05,
                                  height: 1,
                                  decoration: const BoxDecoration(
                                    color: Color(0xffB96220),
                                  ),
                                ),
                                SizedBox(
                                  width: getDeviceSize(context).width * 0.01,
                                ),
                                const SocialContainer(
                                  link: "logo/linkedin.png",
                                ),
                                const SocialContainer(
                                  link: "logo/github.png",
                                ),
                                const SocialContainer(
                                  link: "logo/instagram.png",
                                ),
                                const SocialContainer(
                                  link: "logo/twitter.png",
                                ),
                                const SocialContainer(
                                  link: "logo/facebook.png",
                                ),
                              ],
                            ),
                          ),
                          GestureDetector(
                            child: Column(
                              children: [
                                const Text(
                                  "LET\'S CHAT!",
                                  style: TextStyle(
                                      color: Color(0xffB96220),
                                      height: 2.0,
                                      fontWeight: FontWeight.w700,
                                      fontFamily: 'Montserrat',
                                      letterSpacing: 2),
                                ),
                                Container(
                                  width: 104,
                                  height: 1,
                                  decoration: const BoxDecoration(
                                    color: Color(0xffB96220),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                                left: getDeviceSize(context).width * 0.01,
                                top: getDeviceSize(context).width * 0.015),
                            child: Row(
                              children: [
                                const MultilineTextContainer(
                                  text1: "3",
                                  text2: "Years",
                                  text3: "Experience",
                                ),
                                SizedBox(
                                  width: getDeviceSize(context).width * 0.02,
                                ),
                                const MultilineTextContainer(
                                  text1: "10",
                                  text2: "Projects Completed",
                                  text3: "Locally & Internationally",
                                ),
                                SizedBox(
                                  width: getDeviceSize(context).width * 0.02,
                                ),
                                const MultilineTextContainer(
                                  text1: "10",
                                  text2: "Projects Completed",
                                  text3: "Locally & Internationally",
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Expanded(
                      child: Stack(
                        children: [
                          Container(
                            width: getDeviceSize(context).width * 0.8,
                            height: getDeviceSize(context).height * 0.8,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: const Color(0xffB96220).withOpacity(0.3),
                            ),
                          ),
                          Align(
                              alignment: Alignment.center,
                              child: Image.asset(
                                "images/pardeep.png",
                                width: getDeviceSize(context).width * 0.35,
                                height: getDeviceSize(context).width * 0.35,
                              ))
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          );
        }));
  }
}
