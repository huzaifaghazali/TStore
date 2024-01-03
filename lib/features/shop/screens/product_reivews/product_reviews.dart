import 'package:flutter/material.dart';
import 'package:t_store/common/widgets/appbar/appbar.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/device/device_utility.dart';

import 'widgets/progress_indicator_and_rating.dart';

class ProductReviewScreen extends StatelessWidget {
  const ProductReviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /// Appbar
      appBar: const TAppBar(title: Text('Reviews & ratings'), showBackArrow: true),

      /// Body
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
             crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Ratings and reviews are verified and are from people who use the same type of device that you use.'),
              const SizedBox(height: TSizes.spaceBtwItems),

              /// Overall Product Ratings
              Row(
                children: [
                  Expanded(flex: 3, child: Text('4.8', style: Theme.of(context).textTheme.displayLarge)),
                  const Expanded(
                    flex: 7,
                    child: Column(
                      children: [
                        TRatingProgressIndicator(text: '5', value: 1.0),
                        TRatingProgressIndicator(text: '4', value: 0.8),
                        TRatingProgressIndicator(text: '3', value: 0.6),
                        TRatingProgressIndicator(text: '2', value: 0.4),
                        TRatingProgressIndicator(text: '1', value: 0.2),
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      )
    );
  }
}
