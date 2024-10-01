import 'package:flutter/material.dart';
import '../constants/constants.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: const Color(0xffFBCCA9),
      width: 250,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const SizedBox(
            height: 32,
          ),
          const Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
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
          ),
          const SizedBox(
            height: 24,
          ),
          Container(
            width: double.infinity,
            height: 1,
            color: const Color(0xffB96220).withOpacity(0.3),
          ),
          const SizedBox(
            height: 24,
          ),
          ...routes
              .map(
                (e) => Row(
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        e,
                        style: const TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ],
                ),
              )
              .toList(),
        ]),
      ),
    );
  }
}
