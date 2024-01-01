import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/common/widgets/appbar/appbar.dart';
import 'package:t_store/common/widgets/custom_shapes/curved_shapes/curved_edges_widget.dart';
import 'package:t_store/common/widgets/icons/t_circular_icon.dart';
import 'package:t_store/common/widgets/images/t_rounded_image.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/image_strings.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

import 'widgets/product_details_image_slider.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// Product Image slider
            const TProductImageSlider(),

            /// Product Details
            Padding(
              padding: const EdgeInsets.only(right: TSizes.defaultSpace, left:  TSizes.defaultSpace, bottom:  TSizes.defaultSpace),
              child: Column(
                children: [
                  /// Rating & Share Button
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      /// Rating
                      Row(
                        children: [
                          const Icon(Iconsax.star5, color: Colors.amber, size: 24),
                          const SizedBox(width: TSizes.spaceBtwItems / 2 ),
                          Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(text: '5.0', style: Theme.of(context).textTheme.bodyLarge),
                                const TextSpan(text: '(199)'),
                              ],
                            ),
                          ),
                        ],
                      ),
                      /// Share Button
                      IconButton(onPressed: (){}, icon: const Icon(Icons.share, size: TSizes.iconMd)),
                    ],
                  )
                  /// Price, Title, Stack & Brand
                  ///  Attributes
                  ///  Checkout Button
                  ///  Description
                  ///  Reviews
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

