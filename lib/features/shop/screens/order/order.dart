import 'package:flutter/material.dart';
import 'package:t_store/common/widgets/appbar/appbar.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /// Appbar
      appBar: TAppBar(title: Text('My Orders', style: Theme.of(context).textTheme.headlineSmall)),

    );
  }
}
