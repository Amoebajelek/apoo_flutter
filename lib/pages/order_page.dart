import 'package:apoo_flutter/theme.dart';
import 'package:apoo_flutter/widgets/bottom_navbar_item.dart';
import 'package:flutter/material.dart';

class OrderPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Row(
            children: [
              InkWell(
                  onTap: () {},
                  child: Image.asset(
                    'assets/icon-back-green.png',
                    height: 30,
                  )),
              Spacer(),
              Text(
                'Catalog',
                style: titleTextStyle,
              ),
              Spacer(),
            ],
          )
        ],
      ),
      bottomNavigationBar: Container(
        height: 86,
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
            BottomNavbarItem(
              imageUrl: 'assets/icon-home-green.png',
              isActive: true,
              name: 'home',
            ),
            BottomNavbarItem(
              imageUrl: 'assets/icon-catalog.png',
              isActive: false,
              name: 'catalog',
            ),
            BottomNavbarItem(
              imageUrl: 'assets/icon-order.png',
              isActive: false,
              name: 'order',
            ),
            BottomNavbarItem(
              imageUrl: 'assets/icon-order.png',
              isActive: false,
              name: 'history',
            ),
            BottomNavbarItem(
              imageUrl: 'assets/icon-history.png',
              isActive: false,
              name: 'profile',
            ),
          ],
        ),
      ),
    );
  }
}
