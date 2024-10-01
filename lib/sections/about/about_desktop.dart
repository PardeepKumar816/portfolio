import 'package:flutter/material.dart';
import 'package:protfolio/constants/constants.dart';
import 'package:protfolio/utils/device_size.dart';

class AboutDesktop extends StatelessWidget {
  const AboutDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffDB84B1),
      body: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: getDeviceSize(context).width < 1135
                ? getDeviceSize(context).width * 0.03
                : getDeviceSize(context).width * 0.06,
            vertical: 48),
        child: Row(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                width: 300, //getDeviceSize(context).width*0.37,
                height: getDeviceSize(context).height - 200,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage("/images/pardeep5.JPG")),
                  borderRadius: BorderRadius.all(Radius.circular(8.0)),
                  color: Colors.redAccent,
                ),
              ),
            ),
            SizedBox(
              width: getDeviceSize(context).width < 1135
                  ? getDeviceSize(context).width * 0.02
                  : getDeviceSize(context).width * 0.04,
            ),
            Expanded(
              flex: 2,
              child: SizedBox(
                // width: getDeviceSize(context).width*0.43,
                //   height: getDeviceSize(context).height,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "About Me",
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        color: const Color(0xffF5DBE7),
                        fontWeight: FontWeight.bold,
                        fontSize: getDeviceSize(context).width > 1340 ? 22 : 16,
                      ),
                    ),
                    getDeviceSize(context).width > 1340
                        ? const SizedBox(height: 24)
                        : const SizedBox(height: 18),
                    Text(
                      aboutData["greeting"]!,
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        color: Colors.white,
                        fontWeight: FontWeight.w300,
                        fontSize: getDeviceSize(context).width > 1340 ? 40 : 32,
                      ),
                    ),
                    getDeviceSize(context).width > 1340
                        ? const SizedBox(height: 24)
                        : const SizedBox(height: 18),
                    Text(
                      aboutData["quote"]!,
                      style: const TextStyle(
                          fontStyle: FontStyle.italic,
                          fontFamily: 'Montserrat',
                          color: Colors.white,
                          fontWeight: FontWeight.w400),
                    ),
                    //  SizedBox(height: getDeviceSize(context).width*0.02,),
                    getDeviceSize(context).width > 1340
                        ? const SizedBox(height: 24)
                        : const SizedBox(height: 18),
                    Padding(
                      padding: EdgeInsets.only(
                          right: getDeviceSize(context).width > 1390 ? 60 : 20),
                      child: Text(
                        aboutData["bio"]!,
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                          fontSize:
                              getDeviceSize(context).width > 1340 ? 16 : 15,
                          letterSpacing: 1,
                        ),
                      ),
                    ),
                    // getDeviceSize(context).width > 1340
                    //     ? const SizedBox(height: 24)
                    //     : const SizedBox(height: 18),
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
                              fontFamily: 'Montserrat',
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Spacer(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
