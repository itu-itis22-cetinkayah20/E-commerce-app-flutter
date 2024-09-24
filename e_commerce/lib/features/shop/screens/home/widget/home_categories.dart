import 'package:e_commerce/utils/constants/image_strings.dart';
import 'package:flutter/material.dart';

import '../../../../common/widgets/image_with_text_widgets/vertical_image_with_text.dart';

class HomeCategories extends StatelessWidget {
  const HomeCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
        itemCount: 6,
        scrollDirection: Axis.horizontal,
        itemBuilder: (_, index) {
          return VerticalImageWithText(image: TImages.clothCategory, title: 'Cloth Category', onTap: (){},);
        },
      ),
    );
  }
}

