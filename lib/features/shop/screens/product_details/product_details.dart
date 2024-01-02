import 'package:flutter/material.dart';
import 'package:t_store/features/shop/screens/product_details/widgets/product_attributes.dart';
import 'package:t_store/features/shop/screens/product_details/widgets/product_meta_data.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'widgets/product_details_image_slider.dart';
import 'widgets/rating_share_widget.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
                  const TRatingAndShare(),

                  /// Price, Title, Stack & Brand
                  const TProductMetaData(),

                  ///  Attributes
                  const TProductAttributes(),
                  const SizedBox(height: TSizes.spaceBtwSections),
                  
                  ///  Checkout Button
                  SizedBox(width: double.infinity, child: ElevatedButton(onPressed: (){}, child: const Text('Checkout'))),

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
