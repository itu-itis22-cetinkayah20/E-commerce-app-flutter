import 'package:e_commerce/common/widgets/success_screen/success_screen.dart';
import 'package:e_commerce/features/authentication/screens/login/login.dart';
import 'package:e_commerce/utils/constants/image_strings.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/constants/text_strings.dart';
import 'package:e_commerce/utils/helpers/helper_functions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading:
            false, // Default olarak oluşturulan geri gitme butonunu kaldırdık.
        actions: [
          IconButton(
              onPressed: () => Get.offAll(const LoginScreen()),
              icon: const Icon(CupertinoIcons.clear)),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(Tsizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Image
              Image(
                  image: const AssetImage(TImages.checkEmail),
                  width: THelperFunctions.screenWidth() * 0.6),
              const SizedBox(height: Tsizes.spaceBtwSections),

              // Title & Subtitle
              Text(TTexts.confireEmail,
                  style: Theme.of(context).textTheme.headlineMedium,
                  textAlign: TextAlign.center),
              const SizedBox(height: Tsizes.spaceBtwItems),

              Text('support@purcom.com',
                  style: Theme.of(context).textTheme.labelLarge,
                  textAlign: TextAlign.center),
              const SizedBox(height: Tsizes.spaceBtwSections),

              // Buttons
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () => Get.to(() => SuccessScreen(
                    image: TImages.success,
                    title: TTexts.yourAccountCreatedTitle,
                    subTitle: TTexts.yourAccountCreatedSubTitle,
                    onPressed: () => Get.to(() => const LoginScreen()),
                  )),
                  child: const Text(TTexts.continueString),
                ),
              ),

              const SizedBox(height: Tsizes.spaceBtwItems),

              SizedBox(
                width: double.infinity,
                child: TextButton(
                  onPressed: () {},
                  child: const Text(
                    TTexts.resendEmail,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
