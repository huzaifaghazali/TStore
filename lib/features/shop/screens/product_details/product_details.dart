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
            TCurvedEdgeWidget(
              child: Container(
                color: dark ? TColors.darkerGrey : TColors.light,
                child: const Stack(
                  children: [
                    /// Main Large Image
                    SizedBox(
                      height: 400,
                      child: Padding(
                        padding: EdgeInsets.all(TSizes.productImageRadius * 2),
                        child: Center(child: Image(image: AssetImage(TImages.productImage5))),
                      ),
                    ),
                    /// Image Slider
                    TProductImageSlider(),

                    /// AppBar
                    TAppBar(
                      showBackArrow: true,
                      actions: [
                        TCircularIcon(icon: Iconsax.heart5,color: Colors.red)
                      ],
                    )


                  ],
                ),
              ),
            )

            /// Product Details
          ],
        ),
      ),
    );
  }
}

