import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/styling/app_color.dart';
import '../../../core/styling/app_style.dart';
import '../../../core/widgets/spacing_widgets.dart';

class TopProfileNotificationWidget extends StatelessWidget {
  const TopProfileNotificationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ClipOval(
          child: Image.asset(
            'assets/images/homePhoto.jpeg',
            width: 48.w,
            height: 48.h,
            fit: BoxFit.fill,
          ),
        ),
        const WidthSpace(width: 11),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Welcome back',
              style: AppStyles.subTitlesStyles.copyWith(fontSize: 12),
            ),
            Text(
              'Ahmed Hafez',
              style: AppStyles.black16w600Styles.copyWith(
                fontWeight: FontWeight.w700,
              ),
            ),
          ],
        ),
        Spacer(),
        Container(
          width: 48.w,
          height: 48.h,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: Color(0xffE3E9ED), width: 1),
          ),
          child: Icon(
            Icons.notifications_sharp,
            size: 24.sp,
            color: AppColor.primaryColor,
          ),
        ),
      ],
    );
  }
}
