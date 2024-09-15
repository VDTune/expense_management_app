import 'package:expense_management_app/common/styles/spacing_styles.dart';
import 'package:expense_management_app/common/widgets/login_signup/form_divider.dart';
import 'package:expense_management_app/common/widgets/login_signup/social_button.dart';
import 'package:expense_management_app/features/authentication/screens/widgets/login_form.dart';
import 'package:expense_management_app/features/authentication/screens/widgets/login_header.dart';
import 'package:expense_management_app/utils/constants/sizes.dart';
import 'package:expense_management_app/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get_utils/get_utils.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: TSpaceingStyle.paddingWithDefaultSpace,
            child: Column(
              children: [
                /// Header
                const TLoginHeader(),

                /// Login Form
                const TLoginForm(),

                /// Divider
                TFormDivider(dividerText: TTexts.orSignInWith.capitalize!),
                const SizedBox(height: TSizes.spaceBtwSections),

                /// Footer
                const TSocialButtons(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
