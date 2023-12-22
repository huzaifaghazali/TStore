import 'package:flutter/material.dart';
import 'package:t_store/common/widgets/custom_shapes/curved_shapes/curved_edges.dart';
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
            ClipPath(
              clipper: TCustomCurvedEdges(),
              child: Container(
                color: TColors.primary,
                padding: const EdgeInsets.all(0),
                child: SizedBox(
                  height: 400,
                  child: Stack(
                    children: [
                      Positioned(top: -150, right: -250, child: TCircularContainer(backgroundColor: TColors.textWhite.withOpacity(0.1))),
                      Positioned(top: 100, right: -300, child: TCircularContainer(backgroundColor: TColors.textWhite.withOpacity(0.1))),
                    ],
                  ),
                ),
              ),
            )
          ],
        )
      )
    );
  }
}

