import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constants/sizes.dart';
import '../../../../utils/constants/text_strings.dart';


class TLoginForm extends StatelessWidget {
  const TLoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: TSizes.spaceBtwSections),
        child: Column(
          children: [
            ///email
            TextFormField(
              decoration: const InputDecoration(
                  prefixIcon: Icon(Iconsax.direct_right),
                  labelText: TTexts.email),
            ),
            const SizedBox(height: TSizes.spaceBtwInputFields),

            ///Password
            TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Iconsax.password_check),
                labelText: TTexts.password,
                suffixIcon: Icon(Iconsax.eye_slash),
              ),
            ),
            const SizedBox(height: TSizes.spaceBtwInputFields / 2),

            /// Ghi nhớ tài khoản & Quên mật khẩu
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ///Ghi nhớ tài khoản
                Row(
                  children: [
                    Checkbox(
                      value: true,
                      onChanged: (value) {},
                      activeColor: Colors.orange,
                      checkColor: Colors.black,
                    ),
                    const Text(TTexts.rememberMe),
                  ],
                ),

                ///Quên mật khẩu
                TextButton(onPressed: () {}, child: const Text(TTexts.forgetPassword)),
              ],
            ),
            const SizedBox(height: TSizes.spaceBtwSections),

            ///Nút đăng nhập
            SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text(TTexts.signIn),
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.orange),
                    side: MaterialStateProperty.all<BorderSide>(
                        BorderSide(color: Colors.orange, width: 2)),
                    foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
                  ),
                )),
            const SizedBox(height: TSizes.spaceBtwItems),

            ///Nút tạo tài khoản
            SizedBox(width: double.infinity, child: OutlinedButton(onPressed: () {}, child: const Text(TTexts.createAccount))),
          ],
        ),
      ),
    );
  }
}