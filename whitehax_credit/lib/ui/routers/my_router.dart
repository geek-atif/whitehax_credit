import '../../../ui/screens/account_count.dart';
import '../screens/home_screen.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import '../screens/negative_account_screen.dart';
import '../screens/splash_screen.dart';
import '../screens/user_second_screen.dart';
import '../screens/user_thrid_screen.dart';

class MyRouter {
  static var homeScreen = "/homeScreen";
  static var splashScreen = "/";
  static var accountCount = "/accountCount";
  static var negativeAccountScreen = "/negativeAccountScreen";
  static var userSecondScreen = "/userSecondScreen";
  static var userThridScreen = "/userThridScreen";

  static var route = [
    GetPage(name: splashScreen, page: () => const SplashScreen()),
    GetPage(name: homeScreen, page: () => HomeScreen()),
    GetPage(name: accountCount, page: () => AccountCount()),
    GetPage(name: negativeAccountScreen, page: () => NegativeAccountScreen()),
    GetPage(name: userSecondScreen, page: () => UserSecondScreen()),
    GetPage(name: userThridScreen, page: () => UserThridScreen()),
  ];
}
