import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../styling/app_color.dart';
import '../styling/app_style.dart';

class CustomButtonText extends StatelessWidget {

  final void Function()? onTap;
  final String? header1Text;
  final String? header2Text;


  const CustomButtonText({super.key, this.onTap, this.header1Text, this.header2Text});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: InkWell(
        onTap: onTap,
        child: RichText(
          text: TextSpan(
            text: header1Text,
            style: AppStyles.black16w600Styles.copyWith(
              color: AppColor.primaryColor,
              fontWeight: FontWeight.w400,
            ),
            children: [
              TextSpan(
                text: header2Text,
                style: AppStyles.black16w600Styles.copyWith(
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
