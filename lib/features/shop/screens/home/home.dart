import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:t_store/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:t_store/features/shop/screens/home/widgets/home_categories.dart';
import 'package:t_store/features/shop/screens/home/widgets/promo_slider.dart';
import 'package:t_store/utils/constants/image_strings.dart';
import 'package:t_store/utils/constants/sizes.dart';

import '../../../../common/widgets/Layouts/grid_layout.dart';
import '../../../../common/widgets/custom_shapes/containers/primary_header_container.dart';
import '../../../../common/widgets/custom_shapes/containers/search_container.dart';
import '../../../../common/widgets/products/products_card/product_card_vertical.dart';
import '../../../../common/widgets/texts/section_heading.dart';
import '../all_products/all_products.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// Header
            const TPrimaryHeaderContainer(
              child: Column(
                children: [
                  /// Appbar
                  THomeAppBar(),
                  SizedBox(height: TSizes.spaceBtwSections),

                  /// SearchBar
                  TSearchContainer(text: 'Search in Store'),
                  SizedBox(height: TSizes.spaceBtwSections),

                  ///  Categories
                  Padding(
                    padding: EdgeInsets.only(left: TSizes.defaultSpace),
                    child: Column(
                      children: [
                        /// Heading
                        TSectionHeading(
                          title: 'Popular Categories',
                          showActionButton: false,
                          textColor: Colors.white,
                        ),
                        SizedBox(height: TSizes.spaceBtwItems),

                        /// Categories
                        THomeCategories(),
                      ],
                    ),
                  ),
                  SizedBox(height: TSizes.spaceBtwSections),
                ],
              ),
            ),

            /// Body
            Padding(
              padding: const EdgeInsets.all(TSizes.defaultSpace),
              child: Column(
                children: [
                  /// Promo Slider
                  const TPromoSlider(banners: [
                    TImages.promoBanner1,
                    TImages.promoBanner2,
                    TImages.promoBanner3
                  ]),
                  const SizedBox(height: TSizes.spaceBtwSections),

                  /// Heading
                  TSectionHeading(title: 'Popular Products', onPressed: () => Get.to(() => const AllProducts())),
                  const SizedBox(height: TSizes.spaceBtwItems),

                  /// Popular Products
                  TGridLayout(itemCount: 4, itemBuilder: (_, index) => const TProductCardVertical()),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

