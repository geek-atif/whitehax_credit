import 'package:whitehax_credit/ui/routers/my_router.dart';

import '../../ui/styles/my_app_theme.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'package:get/get.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  _startTime() async {
    var _duration = const Duration(seconds: 2);
    return Timer(_duration, navigationToWelcomeScreen);
  }

  void navigationToWelcomeScreen() {
    try {
      Get.toNamed(MyRouter.homeScreen);
    } on Exception catch (e) {
      e.printError();
    }
  }

  @override
  void initState() {
    super.initState();
    _startTime();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: MyAppTheme.whitehaxBackgroundColor,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            SizedBox(
              height: Get.height * 0.01,
            ),
            Container(
                alignment: Alignment.center,
                child: RichText(
                  text: const TextSpan(
                    children: <TextSpan>[
                      TextSpan(
                        text: 'CrsCredit',
                        style: TextStyle(
                            fontFamily: "Roboto",
                            fontSize: 30,
                            color: Colors.white),
                      ),
                    ],
                  ),
                )),
            SizedBox(
              height: Get.height * 0.01,
            ),
          ],
        ),
      ),
    );
  }
}
