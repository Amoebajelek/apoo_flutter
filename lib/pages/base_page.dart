import 'package:apoo_flutter/pages/sales_page.dart';
import 'package:apoo_flutter/pages/history_page.dart';
import 'package:apoo_flutter/pages/home_page.dart';
import 'package:apoo_flutter/pages/purchasing_page.dart';
import 'package:apoo_flutter/pages/profile_page.dart';
import 'package:apoo_flutter/theme.dart';
import 'package:flutter/material.dart';

class BasePage extends StatefulWidget {
  @override
  State<BasePage> createState() => _BasePageState();
}

class _BasePageState extends State<BasePage> {
  int currentIndex = 0;
  final List<Widget> body = [
    HomePage(),
    SalesPage(),
    PurchasingPage(),
    HistoryPage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: body[currentIndex],
      bottomNavigationBar: Container(
        height: 76,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: whiteColor,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade50,
              blurRadius: 10.0,
              spreadRadius: 0.2,
              offset: Offset(
                0.5,
                0.5,
              ),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              width: 5,
            ),
            buildNavBarItem(
              'assets/icon-home.png',
              0,
              'Home',
            ),
            buildNavBarItem(
              'assets/icon-catalog.png',
              1,
              'Sales',
            ),
            buildNavBarItem(
              'assets/icon-order.png',
              2,
              'Purchasing',
            ),
            buildNavBarItem(
              'assets/icon-history.png',
              3,
              'History',
            ),
            buildNavBarItem(
              'assets/icon-profile.png',
              4,
              'Profile',
            ),
            SizedBox(
              width: 5,
            ),
          ],
        ),
      ),
    );
  }

  GestureDetector buildNavBarItem(
    String imageUrl,
    int index,
    String label,
  ) {
    return GestureDetector(
      onTap: () {
        setState(() {
          currentIndex = index;
        });
      },
      child: Column(
        children: [
          Spacer(),
          Image.asset(
            imageUrl,
            color: index == currentIndex ? greenColor : Color(0xffC6D6EB),
            height: 24,
            width: 24,
          ),
          SizedBox(
            height: 3,
          ),
          Text(
            label,
            style: TextStyle(
              color: index == currentIndex ? greenColor : Color(0xffC6D6EB),
              fontSize: 12,
            ),
          ),
          Spacer(),
        ],
      ),
    );
  }
}
