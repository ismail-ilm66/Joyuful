import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:wordpress/controllers/settings_controller.dart';
import '../colors.dart';
import 'onboardings.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Get.put(SettingsController(), permanent: true);
    Future.delayed(const Duration(seconds: 3), () {
      Get.offAll(() => OnboardingScreen());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorPalette.primaryColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/splash.png',
              height: 100,
            ),
            SizedBox(height: 20),
            CircularProgressIndicator(
              color: ColorPalette.blackColor,
            ),
          ],
        ),
      ),
    );
  }
}
