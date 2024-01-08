import 'package:flutter/material.dart';
import 'package:t_store/common/widgets/appbar/appbar.dart';

class AllBrandsScreen extends StatelessWidget {
  const AllBrandsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: TAppBar(title: Text('Brand'), showBackArrow: true),
    );
  }
}
