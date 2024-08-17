import 'package:e_commerce/features/authentication/screens/login/login.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnBoardingController extends GetxController {
  static OnBoardingController get instance => Get
      .find(); //find methoduyla daha önce onboarding.dartta yarattığımız objeyi buluyoruz.
  /// Variables
  final pageController = PageController();
  Rx<int> currentPageIndex = 0
      .obs; //obs ile değişkeni gözlemleyebilir hale getiriyoruz. Rx ise kolayca değiştirilebilir değişkenlerde kullanılır.
  /// Update Current Index when Page Scroll

  void updatePageIndicator(index) => currentPageIndex.value = index;

  /// Jump to the specific dot selected page

  void dotNavigationClick(index) {
    currentPageIndex.value = index;
    pageController.jumpTo(index);
  }

  /// Update current index & jump to next page

  //Update current page index and jump to the next page
  void nextPage() {
    if (currentPageIndex.value == 2) {
      //Login Screen
      Get.offAll(const LoginScreen());
    } else {
      int page = currentPageIndex.value + 1;
      pageController.animateToPage(
        page,
        duration:
            const Duration(milliseconds: 300), // Adjust the duration as needed
        curve: Curves.easeInOut, // Adjust the animation curve if desired
      );
    }
  }

  /// Update Current Index & jump to the last page

  void skipPage() {
    currentPageIndex.value = 2;
    pageController.jumpToPage(2);
  }
}
