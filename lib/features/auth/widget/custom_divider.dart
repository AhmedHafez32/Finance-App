import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/styling/app_style.dart';
import '../../../core/widgets/spacing_widgets.dart';

class CustomDivider extends StatelessWidget {
  final String text;
  const CustomDivider({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(width: 100.w, child: Divider()),
        WidthSpace(width: 12.w,),
        Text(
          text,
          style: AppStyles.gray12w500Styles.copyWith(
            color: Color(0xff6A707C),
            fontWeight: FontWeight.w600,
          ),
        ),
        WidthSpace(width: 12.w,),
        SizedBox(width: 100.w, child: Divider()),
      ],
    );
  }
}
