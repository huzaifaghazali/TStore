import 'package:flutter/material.dart';
import 'package:t_store/features/shop/screens/cart/widgets/cart_items.dart';
import 'package:t_store/utils/constants/sizes.dart';

import '../../../../common/widgets/appbar/appbar.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(showBackArrow: true, title: Text('Order Review', style: Theme.of(context).textTheme.headlineSmall)),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              /// Item in Cart
              TCartItems(showAddRemoveButtons: false),
              SizedBox(height: TSizes.spaceBtwItems),

            ],
          ),
        ),
      ),

    );
  }
}
