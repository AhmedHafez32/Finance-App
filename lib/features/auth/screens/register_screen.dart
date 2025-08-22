import 'package:finance_app_v1/core/widgets/custom_button_text.dart';
import 'package:finance_app_v1/core/widgets/primary_button_widget.dart';
import 'package:finance_app_v1/features/auth/widget/custom_divider.dart';
import 'package:finance_app_v1/features/auth/widget/social_login_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../core/routing/app_routes.dart';
import '../../../core/styling/app_assets.dart';
import '../../../core/styling/app_color.dart';
import '../../../core/styling/app_style.dart';
import '../../../core/widgets/custom_container.dart';
import '../../../core/widgets/custom_text_field.dart';
import '../../../core/widgets/spacing_widgets.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  late TextEditingController userNameController;
  late TextEditingController emailController;
  late TextEditingController passwordController;
  late TextEditingController confirmPasswordController;

  final formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    userNameController = TextEditingController();
    emailController = TextEditingController();
    passwordController = TextEditingController();
    confirmPasswordController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Form(
            key: formKey,
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
                    width: 331.w,
                    child: Text(
                      'Hello! Register to get started',
                      style: AppStyles.primaryHeadLineStyles,
                    ),
                  ),
                  const HeightSpace(height: 32),
                  CustomTextField(
                    hintText: 'UserName',
                    controller: userNameController,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Missed';
                      }
                      return null;
                    },
                  ),
                  const HeightSpace(height: 12),
                  CustomTextField(
                    hintText: 'Email',
                    controller: emailController,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Missed';
                      }
                      return null;
                    },
                  ),
                  const HeightSpace(height: 12),
                  CustomTextField(
                    hintText: 'Password',
                    controller: passwordController,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Missed';
                      }
                      return null;
                    },
                  ),
                  const HeightSpace(height: 12),
                  CustomTextField(
                    hintText: 'Confirm Password',
                    controller: confirmPasswordController,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Missed';
                      }
                      return null;
                    },
                  ),
                  const HeightSpace(height: 30),
                  PrimaryButtonWidget(
                    buttonText: 'Register',
                    onPress: () {
                      if (formKey.currentState!.validate()) {}
                    },
                  ),
                  const HeightSpace(height: 35),
                  CustomDivider(text: 'Or Register with'),
                  const HeightSpace(height: 22),
                  SocialLoginWidget(),
                  const HeightSpace(height: 54),
                  // Already have an account? Login Now
                  CustomButtonText(
                    blueText: 'Already have an account? ',
                    blackText: "Login Now",
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
