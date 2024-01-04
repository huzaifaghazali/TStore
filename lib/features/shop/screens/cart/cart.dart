import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/common/widgets/appbar/appbar.dart';
import 'package:t_store/common/widgets/icons/t_circular_icon.dart';
import 'package:t_store/common/widgets/images/t_rounded_image.dart';
import 'package:t_store/common/widgets/texts/product_title_text.dart';
import 'package:t_store/common/widgets/texts/t_brand_title_text_with_verfied_icon.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/image_strings.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

import '../../../../common/widgets/products/cart/cart_item.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: TAppBar(showBackArrow: true, title: Text('Cart', style: Theme.of(context).textTheme.headlineSmall)),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: ListView.separated(
            shrinkWrap: true,
            itemCount: 4,
            separatorBuilder: (_, __) => const SizedBox(height: TSizes.spaceBtwSections),
            itemBuilder: (_, index) => Column(
              children: [
                const TCartItem(),
                const SizedBox(height: TSizes.spaceBtwItems),

                Row(
                  children: [
                    const SizedBox(width: 70),
                    /// Add Remove Buttons
                   Row(
                     children: [
                       TCircularIcon(
                         icon: Iconsax.minus,
                         width: 32,
                         height: 32,
                         size: TSizes.md,
                         color: dark ? TColors.white : TColors.black,
                         backgroundColor: dark ? TColors.darkerGrey : TColors.light,
                       ),
                       const SizedBox(width: TSizes.spaceBtwItems),
                       Text('2',style: Theme.of(context).textTheme.titleSmall),
                       const SizedBox(width: TSizes.spaceBtwItems),
                       const TCircularIcon(
                         icon: Iconsax.add,
                         width: 32,
                         height: 32,
                         size: TSizes.md,
                         color: TColors.white,
                         backgroundColor: TColors.primary,
                       ),

                     ],
                   )

                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

