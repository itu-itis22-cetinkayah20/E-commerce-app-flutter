import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import 'termsandconditions_checkbox.dart';


class TSignupForm extends StatelessWidget {
  const TSignupForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                // Önceden hata alınıyordu.
                // firstname
                child: TextFormField(
                  expands: false,
                  decoration: const InputDecoration(
                    labelText: TTexts.firstname,
                    prefixIcon: Icon(Iconsax.user),
                  ),
                ),
              ),
    
              const SizedBox(width: Tsizes.spaceBtwInputFields),
              // lastName
              Expanded(
                child: TextFormField(
                  expands: false,
                  decoration: const InputDecoration(
                    labelText: TTexts.lastname,
                    prefixIcon: Icon(Iconsax.user_edit),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: Tsizes.spaceBtwInputFields),
    
          // Username
          TextFormField(
            expands: false,
            decoration: const InputDecoration(
              labelText: TTexts.username,
              prefixIcon: Icon(Iconsax.user_edit),
            ),
          ),
    
          const SizedBox(height: Tsizes.spaceBtwInputFields),
    
          // Password
          TextFormField(
            obscureText: true,
            decoration: const InputDecoration(
              labelText: TTexts.password,
              prefixIcon: Icon(Iconsax.password_check),
              suffixIcon: Icon(Iconsax.eye_slash),
            ),
          ),
    
          const SizedBox(height: Tsizes.spaceBtwInputFields),
    
          // Email
          TextFormField(
            decoration: const InputDecoration(
              labelText: TTexts.email,
              prefixIcon: Icon(Iconsax.direct),
            ),
          ),
    
          const SizedBox(height: Tsizes.spaceBtwInputFields),
          // Phone Number
          TextFormField(
            decoration: const InputDecoration(
              labelText: TTexts.phoneNo,
              prefixIcon: Icon(Iconsax.call),
            ),
          ),
    
          const SizedBox(height: Tsizes.spaceBtwSections),
    
          // Terms and Conditions
          const TTermsAndConditionsCheckBox(),
          const SizedBox(height: Tsizes.spaceBtwSections),
          
          // Sign Up Button
          SizedBox(width: double.infinity,
          child: ElevatedButton(
            onPressed: () {},
            child: const Text(TTexts.createAccount),
            ),
          ),
        ],
      ),
    );
  }
}

