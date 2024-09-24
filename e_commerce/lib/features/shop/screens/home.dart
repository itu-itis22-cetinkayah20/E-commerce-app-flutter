import 'package:e_commerce/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/image_strings.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/device/device_utility.dart';
import 'package:e_commerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:iconsax/iconsax.dart';
import '../../../common/widgets/custom_shapes/containers/primary_header_container.dart';
import '../../../common/widgets/image_with_text_widgets/vertical_image_with_text.dart';
import 'home/home_categories.dart';
import 'home/widget/home_appbar.dart';
import 'home/widget/home_section_heading.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Header
            PrimaryHeaderContainer(
              child: Column(
                //Column değil de Container yaparsak childrenlar eklenmeden mevcut designı görebiliriz.
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const HomeAppBar(),
                  const SizedBox(height: Tsizes.spaceBtwSections),

                  // Searchbar
                  const SearchContainer(text: 'Search in Store'),
                  const SizedBox(height: Tsizes.spaceBtwSections),
                  // Categories
                  Padding(
                    padding: const EdgeInsets.only(left: Tsizes.defaultSpace),
                    child: Column(
                      children: [
                        // Heading
                        const SectionHeading(
                          title: 'Popular Categories',
                          showActionButton: false,
                          textColor: TColors.white,
                        ),
                        const SizedBox(height: Tsizes.spaceBtwItems),

                        // Categories
                        HomeCategories(),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

