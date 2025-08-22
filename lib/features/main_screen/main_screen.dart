import 'package:finance_app_v1/core/styling/app_assets.dart';
import 'package:finance_app_v1/core/styling/app_color.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  List<Widget> screens = [
    Container(width: 20, height: 20, color: Colors.red),
    Container(width: 20, height: 20, color: Colors.blue),
    Container(width: 20, height: 20, color: Colors.yellow),
    Container(width: 20, height: 20, color: Colors.purple),
    Container(width: 20, height: 20, color: Colors.green),
  ];

  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: AppColor.primaryColor,
        unselectedItemColor: AppColor.grayColor,
        backgroundColor: AppColor.whiteColor,
        showUnselectedLabels: true,
        iconSize: 24,
        elevation: 1,
        currentIndex: currentIndex,
        onTap: (value) {
          setState(() {
            currentIndex = value;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: 'Home'),
          BottomNavigationBarItem(
            icon: Icon(Icons.stacked_bar_chart_rounded),
            label: 'Statistics',
          ),
          BottomNavigationBarItem(
            icon: Stack(
              children: [
                Image.asset(AppAssets.addIconBackground),
                Positioned(
                    top: 14,
                    left: 14,
                    child: Image.asset(AppAssets.addIconPlus))
              ],
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.card_membership_rounded),
            label: 'My Card',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
