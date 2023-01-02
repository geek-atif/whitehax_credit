import '../screens/home_screen.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import '../screens/splash_screen.dart';

class MyRouter {
  static var homeScreen = "/homeScreen";
  static var splashScreen = "/";

  static var route = [
    GetPage(name: splashScreen, page: () => const SplashScreen()),
    GetPage(name: homeScreen, page: () => HomeScreen()),
  ];
}
