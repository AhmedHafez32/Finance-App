import 'package:finance_app_v1/core/widgets/custom_button_text.dart';
import 'package:finance_app_v1/core/widgets/custom_text_field.dart';
import 'package:finance_app_v1/core/widgets/primary_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../core/routing/app_routes.dart';
import '../../../core/styling/app_assets.dart';
import '../../../core/styling/app_color.dart';
import '../../../core/styling/app_style.dart';
import '../../../core/widgets/custom_container.dart';
import '../../../core/widgets/spacing_widgets.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 22.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const HeightSpace(height: 12),
                Align(
                  alignment: Alignment.centerLeft,
                  child: CustomContainer(
                    child: Image.asset(
                      AppAssets.arrowBack,
                      width: 19.w,
                      height: 19.h,
                    ),
                  ),
                ),
                const HeightSpace(height: 28),
                SizedBox(
                  width: 234.w,
                  child: Text(
                    'Forgot Password?',
                    style: AppStyles.primaryHeadLineStyles,
                  ),
                ),
                const HeightSpace(height: 10),
                SizedBox(
                  width: 331.w,
                  child: Text(
                    "Don't worry! It occurs. Please enter the email address linked with your account.",
                    style: AppStyles.subTitlesStyles,
                  ),
                ),
                const HeightSpace(height: 32),
                CustomTextField(hintText: 'Enter your email'),
                const HeightSpace(height: 38),
                PrimaryButtonWidget(buttonText: 'Send Code', onPress: () {}),
                const HeightSpace(height: 362),
               CustomButtonText(blueText: 'Remember Password? ',blackText: "Login",)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
