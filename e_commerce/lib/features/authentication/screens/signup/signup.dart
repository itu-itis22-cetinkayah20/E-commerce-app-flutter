import 'package:e_commerce/common/widgets/login_signup/form_divider.dart';
import 'package:e_commerce/common/widgets/login_signup/social_buttons.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


import 'widgets/signup_form.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(), // Default olarak geri gitme butonu oluşturur.
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(Tsizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Title
              Text(TTexts.signupTitle,
                  style: Theme.of(context).textTheme.headlineMedium),

              const SizedBox(height: Tsizes.spaceBtwSections),

              // Form
              const TSignupForm(),
              const SizedBox(height: Tsizes.spaceBtwSections),

              // Divider 
              TFormDivider(dividerText: TTexts.orSignUpWith.capitalize!), 
              const SizedBox(height: Tsizes.spaceBtwSections),  
              // Social Buttons 
              const TSocialButtons(),

            ],
          ),
        ),
      ),
    );
  }
}

