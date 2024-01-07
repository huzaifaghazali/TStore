import 'package:flutter/material.dart';
import 'package:t_store/common/widgets/appbar/appbar.dart';

class SubCategoriesScreen extends StatelessWidget {
  const SubCategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TAppBar(title: Text('Sports shirts'), showBackArrow: true),

    );
  }
}
