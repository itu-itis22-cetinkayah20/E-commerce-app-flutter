import 'package:flutter/material.dart';
import 'package:e_commerce/utils/theme/theme.dart';
import 'package:get/get.dart';
import 'package:e_commerce/features/authentication/screens/onboarding/onboarding.dart';
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      themeMode: ThemeMode.system,
      theme: TAppTheme.lightTheme,
      darkTheme: TAppTheme.darkTheme,
      home: const OnBoardingScreen(),
    );
  }
}
