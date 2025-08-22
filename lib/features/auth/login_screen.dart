import 'package:finance_app_v1/core/routing/app_routes.dart';
import 'package:finance_app_v1/core/styling/app_assets.dart';
import 'package:finance_app_v1/core/styling/app_color.dart';
import 'package:finance_app_v1/core/styling/app_style.dart';
import 'package:finance_app_v1/core/widgets/custom_button_text.dart';
import 'package:finance_app_v1/core/widgets/custom_container.dart';
import 'package:finance_app_v1/core/widgets/custom_text_field.dart';
import 'package:finance_app_v1/core/widgets/primary_button_widget.dart';
import 'package:finance_app_v1/core/widgets/spacing_widgets.dart';
import 'package:finance_app_v1/features/auth/widget/custom_divider.dart';
import 'package:finance_app_v1/features/auth/widget/social_login_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  final formKey =GlobalKey<FormState>();

  late TextEditingController emailController;

  late TextEditingController passwordController;

  @override
  void initState() {
    super.initState();
    emailController = TextEditingController();
    passwordController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 22.w),
          child: SingleChildScrollView(
            child: Form(
              key: formKey,
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
                    width: 280.w,
                    child: Text(
                      'Welcome back! Again!',
                      style: AppStyles.primaryHeadLineStyles,
                    ),
                  ),
                  const HeightSpace(height: 32),
                  CustomTextField(
                    hintText: 'Enter Your Email',
                    controller: emailController,
                    validator: (value){
                      if(value!.isEmpty) {
                        return 'Missed';
                      }
                      return null;
                    },
                  ),
                  const HeightSpace(height: 15),
                  CustomTextField(
                    hintText: 'Enter Your Password',
                    controller: passwordController,
                    validator: (value){
                      if(value!.isEmpty) {
                        return 'Missed';
                      }
                      if(value.length < 8){
                        return 'Password must be at least 8 characters';
                      }
                      return null;
                    },
                    isPassword: true,
                    suffixIcon: Icon(
                      Icons.remove_red_eye,
                      color: AppColor.grayColor,
                      size: 20.sp,
                    ),
                  ),
                  const HeightSpace(height: 15),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      'Forgot Password?',
                      style: AppStyles.gray12w500Styles.copyWith(
                        color: Color(0xff6A707C),
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  const HeightSpace(height: 30),
                  PrimaryButtonWidget(buttonText: 'Login', onPress: () {
                    if(formKey.currentState!.validate()){

                    }
                  }),
                  const HeightSpace(height: 15),
                  CustomDivider(text: 'Or Login with',),
                  const HeightSpace(height: 22),
                  SocialLoginWidget(),
                  const HeightSpace(height: 155),
                  CustomButtonText(blackText: 'Register ',blueText: "NowDon’t have an account? ",),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
