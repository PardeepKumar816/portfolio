import 'package:flutter/material.dart';
import '../constants/constants.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: 160,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: routes
              .map(
                (e) => TextButton(
                  onPressed: () {},
                  child: Text(
                    e,
                    style: const TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 16,
                    ),
                  ),
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}
