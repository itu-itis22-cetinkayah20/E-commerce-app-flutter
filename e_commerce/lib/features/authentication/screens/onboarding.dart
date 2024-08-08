import 'package:e_commerce/utils/constants/image_strings.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/constants/text_strings.dart';
import 'package:e_commerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';



class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) { // Ekranda sol altta sayfaların sırasını gösteren bir buton ve sağ altta next page işareti olan yuvarlak bir buton var.
  // Sayfanın kendisi statik değilken butonlar statik, aynı amanda sayfaların kayması gerekiyor ve bizim bunu başarmamız için page view özelliğini kullanmamız gerekiyor. 
  // Bütün ögeler bir stackin içine koyacağız.
    return Scaffold(
      body: Stack(
        children: [
          // Horizontal Scrollable Pages
           PageView(
             children: [
              Column(
                children: [
                  // Image
                  Image(
                    width: THelperFunctions.screenWidth() * 0.8,
                    height: THelperFunctions.screenHeight() * 0.6,
                    image: const AssetImage(TImages.onBoardingImage1),
                  ),
                  // Title
                  Text(TTexts.onBoardingTitle1, 
                  style: Theme.of(context).textTheme.headlineMedium, 
                  textAlign: TextAlign.center,),
                  // Subtitle
                  Text(TTexts.onBoardingSubTitle1, 
                  style: Theme.of(context).textTheme.bodyMedium, 
                  textAlign: TextAlign.center,),
                ],
              )
            ],
          ),
          // Skip Button
          
          // Dot navigation SmoothPageİndicator

          // Circular Button
        ],
        ) ,
    );
  }
}