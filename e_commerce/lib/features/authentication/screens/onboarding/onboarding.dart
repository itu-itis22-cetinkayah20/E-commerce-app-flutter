import 'package:e_commerce/features/authentication/controllers.onboarding/onboarding_controller.dart';
import 'package:e_commerce/features/authentication/screens/onboarding/widgets/onboarding_skip.dart';
import 'package:e_commerce/utils/constants/image_strings.dart';
import 'package:e_commerce/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'widgets/onboarding_navigation.dart';
import 'widgets/onboarding_nextbutton.dart';
import 'widgets/onboarding_page.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Ekranda sol altta sayfaların sırasını gösteren bir buton ve sağ altta next page işareti olan yuvarlak bir buton var.
    // Sayfanın kendisi statik değilken butonlar statik, aynı amanda sayfaların kayması gerekiyor ve bizim bunu başarmamız için page view özelliğini kullanmamız gerekiyor.
    // Bütün ögeler bir stackin içine koyacağız.
    final controller = Get.put(
        OnBoardingController()); //put PageControllerın yeni bir instancesini yaratıyor.
    return Scaffold(
      body: Stack(
        children: [
          // Horizontal Scrollable Pages
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: const [
              OnBoardingPage(
                  image: TImages.onBoardingImage1,
                  title: TTexts.onBoardingTitle1,
                  subTitle: TTexts.onBoardingSubTitle1),
              OnBoardingPage(
                  image: TImages.onBoardingImage2,
                  title: TTexts.onBoardingTitle2,
                  subTitle: TTexts.onBoardingSubTitle2),
              OnBoardingPage(
                  image: TImages.onBoardingImage3,
                  title: TTexts.onBoardingTitle3,
                  subTitle: TTexts.onBoardingSubTitle3),
            ],
          ),
          // Skip Button
          const OnBoardingSkip(),
          // Dot navigation SmoothPageİndicator
          const OnBoardingNavigation(),

          // Circular Button
          const OnBoardingNextButton(),
        ],
      ),
    );
  }
}
