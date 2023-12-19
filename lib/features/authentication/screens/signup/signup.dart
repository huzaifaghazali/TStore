import 'package:flutter/material.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:t_store/common/widgets.login_signup/form_divider.dart';
import 'package:t_store/common/widgets.login_signup/social_buttons.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/constants/text_strings.dart';

import 'widgets/signupform.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      /// Appbar
        appBar: AppBar(),
        body: SingleChildScrollView(
            child: Padding(
                padding: const EdgeInsets.all(TSizes.defaultSpace),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    /// Title
                    Text(TTexts.signupTitle, style: Theme.of(context).textTheme.headlineMedium),
                    const SizedBox(height: TSizes.spaceBtwSections),

                    /// Form
                    const TSignupForm(),
                    const SizedBox(height: TSizes.spaceBtwSections),

                    /// Divider
                    TFormDivider(dividerText: TTexts.orSignInWith.capitalize!),
                    const SizedBox(height: TSizes.spaceBtwSections),

                    /// Social Buttons
                    const TSocialButtons(),
                    const SizedBox(height: TSizes.spaceBtwSections),
                  ],
                )
            )
        )
    );
  }
}

