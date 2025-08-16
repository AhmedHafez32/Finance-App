import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import '../../../core/styling/app_assets.dart';
import '../../../core/widgets/custom_container.dart';

class SocialLoginWidget extends StatelessWidget {
  const SocialLoginWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomContainer(
          width: 105.w,
          height: 56.h,
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: SvgPicture.asset(
              AppAssets.facebookSVGIcon,
              width: 12.w,
              height: 24.h,
            ),
          ),
        ),
        CustomContainer(
          width: 105.w,
          height: 56.h,
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: SvgPicture.asset(
              AppAssets.googleSVGIcon,
              width: 12.w,
              height: 24.h,
            ),
          ),
        ),
        CustomContainer(
          width: 105.w,
          height: 56.h,
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: SvgPicture.asset(
              AppAssets.appleSVGIcon,
              width: 12.w,
              height: 24.h,
            ),
          ),
        ),
      ],
    );
  }
}
