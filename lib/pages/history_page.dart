import 'package:apoo_flutter/pages/catalog_page.dart';
import 'package:apoo_flutter/pages/home_page.dart';
import 'package:apoo_flutter/pages/order_page.dart';
import 'package:apoo_flutter/pages/profile_page.dart';
import 'package:apoo_flutter/theme.dart';
import 'package:apoo_flutter/widgets/bottom_navbar_item.dart';
import 'package:flutter/material.dart';

class HistoryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFAFAFA),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: edge,
          ),
          child: ListView(
            children: [
              Text(
                'History Page',
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: 76,
        width: MediaQuery.of(context).size.width - (2 * 30),
        margin: EdgeInsets.symmetric(
          horizontal: 30,
        ),
        decoration: BoxDecoration(
          color: Color(0xffF6F7F8),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomePage(),
                  ),
                );
              },
              child: BottomNavbarItem(
                imageUrl: 'assets/icon-home.png',
                isActive: false,
                name: 'home',
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CatalogPage(),
                  ),
                );
              },
              child: BottomNavbarItem(
                imageUrl: 'assets/icon-catalog.png',
                isActive: false,
                name: 'catalog',
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => OrderPage(),
                  ),
                );
              },
              child: BottomNavbarItem(
                imageUrl: 'assets/icon-order.png',
                isActive: false,
                name: 'order',
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HistoryPage(),
                  ),
                );
              },
              child: BottomNavbarItem(
                imageUrl: 'assets/icon-history-green.png',
                isActive: true,
                name: 'history',
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ProfilePage(),
                  ),
                );
              },
              child: BottomNavbarItem(
                imageUrl: 'assets/icon-profile.png',
                isActive: false,
                name: 'profile',
              ),
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
