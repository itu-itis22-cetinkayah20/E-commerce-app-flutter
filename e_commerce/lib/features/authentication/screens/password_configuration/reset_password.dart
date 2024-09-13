import 'package:e_commerce/utils/constants/image_strings.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/constants/text_strings.dart';
import 'package:e_commerce/utils/helpers/helper_functions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () => Get.back(),
            icon: const Icon(CupertinoIcons.clear),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(Tsizes.defaultSpace),
          child: Column(
            children: [
              // Image with 60% screen width
              Image(
                  image: const AssetImage(TImages.checkEmail),
                  width: THelperFunctions.screenWidth() * 0.6),
              const SizedBox(height: Tsizes.spaceBtwSections),

              // Title & Subtitle
              Text(TTexts.changeYourPasswordTitle,
                  style: Theme.of(context).textTheme.headlineMedium,
                  textAlign: TextAlign.center),

              const SizedBox(height: Tsizes.spaceBtwItems),

              Text(TTexts.changeYourPasswordSubTitle,
                  style: Theme.of(context).textTheme.labelLarge,
                  textAlign: TextAlign.center),

              const SizedBox(height: Tsizes.spaceBtwSections),

              // Buttons
              SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: (){},
                    child: const Text(TTexts.done),
                  )),
              const SizedBox(height: Tsizes.spaceBtwItems),
              SizedBox(
                  width: double.infinity,
                  child: TextButton(
                    onPressed: (){},
                    child: const Text(TTexts.resendEmail),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
