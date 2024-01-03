import 'package:flutter/material.dart';
import 'package:t_store/common/widgets/appbar/appbar.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/device/device_utility.dart';

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
                  Expanded(
                    flex: 7,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Expanded(flex: 1, child: Text('5', style: Theme.of(context).textTheme.bodyMedium)),
                            Expanded(
                              flex: 11,
                              child: SizedBox(
                                width: TDeviceUtils.getScreenWidth(context) * 0.5,
                                child: LinearProgressIndicator(
                                  value: 0.5,
                                  minHeight: 11,
                                  backgroundColor: TColors.grey,
                                  valueColor: const AlwaysStoppedAnimation(TColors.primary),
                                  borderRadius: BorderRadius.circular(7),
                                ),
                              ),
                            )
                          ],
                        )
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
