import 'package:flutter/material.dart';

import '../../../../../common/widgets/images/t_rounded_image.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/image_strings.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/helpers/helper_functions.dart';

class TProductImageSlider extends StatelessWidget {
  const TProductImageSlider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Positioned(
      right: 0,
      bottom: 30,
      left: TSizes.defaultSpace,
      child: SizedBox(
        height: 80,
        child: ListView.separated(
          separatorBuilder: (_, __) => const SizedBox(width: TSizes.spaceBtwItems),
          itemCount: 6,
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          physics: const AlwaysScrollableScrollPhysics(),
          itemBuilder: (_, index) => TRoundedImage(
            width: 80,
            backgroundColor: dark ? TColors.dark : TColors.white,
            border: Border.all(color: TColors.primary),
            padding: const EdgeInsets.all(TSizes.sm),
            imageUrl: TImages.productImage3,
          ),
        ),
      ),
    );
  }
}
