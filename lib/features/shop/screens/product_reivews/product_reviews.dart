import 'package:flutter/material.dart';
import 'package:t_store/common/widgets/appbar/appbar.dart';

class ProductReviewScreen extends StatelessWidget {
  const ProductReviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      /// Appbar
      appBar: TAppBar(title: Text('Reviews & ratings'), showBackArrow: true),

      /// Body
      body: SingleChildScrollView(

      )
    );
  }
}
