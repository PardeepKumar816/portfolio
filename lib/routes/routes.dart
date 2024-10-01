import 'package:protfolio/sections/home/home.dart';
import 'package:protfolio/sections/main/main_section.dart';

import '../sections/about/about.dart';

class Routes {
  static String home = '/Home';
  static String about = '/About';
  static String mainSection = '/MainSection';

  static getRoutes(context) {
    return {
      Routes.home: (context) => const Home(),
      Routes.about: (context) => const About(),
      Routes.mainSection:(context) => const MainPage(),
    };
  }
}
