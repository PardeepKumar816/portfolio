import 'package:flutter/material.dart';

import '../../constants/constants.dart';
import '../../utils/device_size.dart';

class AboutMobile extends StatelessWidget {
  const AboutMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffDB84B1),
      body: Padding(
        padding: getDeviceSize(context).width < 330
            ? const EdgeInsets.symmetric(vertical: 10, horizontal: 10)
            : EdgeInsets.symmetric(
                vertical: 24, horizontal: getDeviceSize(context).width * 0.1),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              "About Me",
              style: TextStyle(
                  fontFamily: 'Montserrat',
                  color: const Color(0xffF5DBE7),
                  fontWeight: FontWeight.bold,
                  fontSize: getDeviceSize(context).width < 420 ? 18 : 18),
            ),
            SizedBox(
              height: getDeviceSize(context).width < 420 ? 12 : 24,
            ),
            Text(aboutData["greeting"]!,
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontFamily: 'Montserrat',
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: getDeviceSize(context).width < 420 ? 15 : 24)),
            SizedBox(
              height: getDeviceSize(context).width < 420 ? 12 : 24,
            ),
            Text(
              aboutData["quote"]!,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontStyle: FontStyle.italic,
                fontFamily: 'Montserrat',
                color: Colors.white,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(
              height: getDeviceSize(context).width < 420
                  ? getDeviceSize(context).width * 0.01
                  : getDeviceSize(context).width * 0.02,
            ),
            Text(
              aboutData["bio"]!,
              textAlign: TextAlign.center,
              style: const TextStyle(
                  fontFamily: 'Montserrat',
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  fontSize: 12,
                  letterSpacing: 1),
            ),
            SizedBox(
              height: getDeviceSize(context).width < 420
                  ? getDeviceSize(context).width * 0.01
                  : getDeviceSize(context).width * 0.02,
            ),
            const Spacer(),
            ElevatedButton(
              style: ButtonStyle(
                shape: WidgetStatePropertyAll(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                ),
                fixedSize: const WidgetStatePropertyAll(Size(220, 48)),
                backgroundColor: const WidgetStatePropertyAll(
                  Color(0xff9E3773),
                ),
              ),
              onPressed: () {},
              child: const Row(
                children: [
                  Icon(
                    Icons.file_present_sharp,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    "Download Resume",
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Montserrat',
                    ),
                  )
                ],
              ),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
