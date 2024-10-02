import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:protfolio/constants/constants.dart';
import 'package:protfolio/responsive/responsive.dart';
import 'package:protfolio/sections/about/about.dart';
import 'package:protfolio/sections/contact/contact.dart';
import 'package:protfolio/sections/home/home.dart';
import 'package:protfolio/sections/projects/projects.dart';
import 'package:protfolio/sections/tech/tech.dart';

part 'widgets/_body.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  late ScrollController _scrollController;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController(); // Initialize the ScrollController
    Constants.controller = _scrollController;
  }

  @override
  void dispose() {
    _scrollController.dispose(); // Dispose of the controller when done
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            _Body(scrollController: _scrollController),
            Positioned(
              right: 0,
              top: 1.sh * 0.8,
              child: InkWell(
                onTap: () {
                  _scrollController.animateTo(
                    0,
                    duration: const Duration(seconds: 2),
                    curve: Curves.easeInOut,
                  );
                },
                child: Container(
                  alignment: Alignment.center,
                  width: 40,
                  height: 45,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      bottomLeft: Radius.circular(10),
                    ),
                  ),
                  child: const Center(
                    child: Icon(
                      Icons.arrow_drop_up,
                      size: 32,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
