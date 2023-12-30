import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/common/widgets/appbar/appbar.dart';
import 'package:t_store/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:t_store/common/widgets/images/t_circular_image.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/image_strings.dart';
import 'package:t_store/utils/constants/sizes.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// Header
            TPrimaryHeaderContainer(
              child: Column(
                children: [
                  TAppBar(title: Text('Account', style: Theme.of(context).textTheme.headlineMedium!.apply(color: TColors.white))),

                  /// User Profile Card
                  ListTile(
                    leading: const TCircularImage( image: TImages.user, width: 50, height: 50, padding: 0),
                    title: Text('Huzaifa Ghazali', style: Theme.of(context).textTheme.headlineSmall!.apply(color: TColors.white)),
                    subtitle: Text('huzaifa@gmail.com', style: Theme.of(context).textTheme.bodyMedium!.apply(color: TColors.white)),
                    trailing: IconButton(onPressed: (){}, icon: const Icon(Iconsax.edit, color: TColors.white)),
                  ),
                  const SizedBox(height: TSizes.spaceBtwSections),
                ],
              ),
            )
            /// Body
          ],
        ),
      ),
    );
  }
}
