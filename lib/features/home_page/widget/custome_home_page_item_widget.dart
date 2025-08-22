import 'package:finance_app_v1/core/styling/app_style.dart';
import 'package:finance_app_v1/core/widgets/spacing_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/styling/app_color.dart';

class CustomHomePageItemWidget extends StatelessWidget {
  final IconData iconData;
  final String title;
  final String description;
  const CustomHomePageItemWidget({
    super.key,
    required this.iconData,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: AppColor.grayColor, width: 1),
        borderRadius: BorderRadius.circular(16.r),
      ),
      child: Padding(
        padding: EdgeInsets.all(16.sp),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 48.w,
              height: 48.h,
              decoration: BoxDecoration(
                color: Color(0xffECF1F6),
                borderRadius: BorderRadius.circular(16.r),
              ),
              child: Icon(iconData, color: AppColor.primaryColor),
            ),
            const HeightSpace(height: 12),
            Text(
              title,
              style: AppStyles.black16w600Styles.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            const HeightSpace(height: 4),
            Text(
              description,
              style: AppStyles.subTitlesStyles.copyWith(fontSize: 12.sp),
            ),
          ],
        ),
      ),
    );
  }
}
