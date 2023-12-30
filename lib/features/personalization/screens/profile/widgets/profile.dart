import 'package:flutter/material.dart';
import 'package:t_store/common/widgets/appbar/appbar.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(showBackArrow: true, title: Text('Profile')),
      body: SingleChildScrollView(

      ),
    );
  }
}
