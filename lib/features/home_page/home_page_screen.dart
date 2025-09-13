import 'package:finance_app_v1/core/widgets/spacing_widgets.dart';
import 'package:finance_app_v1/features/home_page/widget/carousel_widget.dart';
import 'package:finance_app_v1/features/home_page/widget/custome_home_page_item_widget.dart';
import 'package:finance_app_v1/features/home_page/widget/top_profile_notification_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomePageScreen extends StatefulWidget {
  const HomePageScreen({super.key});

  @override
  State<HomePageScreen> createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 25.w),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const HeightSpace(height: 19),
              TopProfileNotificationWidget(),
              const HeightSpace(height: 24),
              CarouselWidget(),
              const HeightSpace(height: 24),
              GridView(
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 8.sp,
                  crossAxisSpacing: 8.sp,
                ),
                children: [
                  CustomHomePageItemWidget(
                    iconData: Icons.send_sharp,
                    title: 'Send money',
                    description: 'Take acc to acc',
                  ),
                  CustomHomePageItemWidget(
                    iconData: Icons.wallet,
                    title: 'Pay the bill',
                    description: 'Lorem ipsum',
                  ),
                  CustomHomePageItemWidget(
                    iconData: Icons.send_sharp,
                    title: 'Request',
                    description: 'Lorem ipsum',
                  ),
                  CustomHomePageItemWidget(
                    iconData: Icons.people_alt_rounded,
                    title: 'Contact',
                    description: 'Lorem ipsum',
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
