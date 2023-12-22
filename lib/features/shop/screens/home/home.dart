import 'package:flutter/material.dart';
import 'package:t_store/utils/constants/colors.dart';

import '../../../../common/widgets/custom_shapes/containers/circular_container.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: TColors.primary,
              padding: const EdgeInsets.all(0),
              child: Stack(
                children: [
                   TCircularContainer(backgroundColor: TColors.textWhite.withOpacity(0.1)),
                   TCircularContainer(backgroundColor: TColors.textWhite.withOpacity(0.1)),
                ],
              ),
            )
          ],
        )
      )
    );
  }
}

