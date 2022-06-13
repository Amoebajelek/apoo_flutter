import 'package:flutter/material.dart';

import '../theme.dart';
import '../widgets/bottom_navbar_item.dart';
import 'catalog_page.dart';
import 'history_page.dart';
import 'home_page.dart';
import 'order_page.dart';

class ProfilePage extends StatefulWidget {
  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  bool isEmailValid = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: edge,
          ),
          child: ListView(
            children: [
              SizedBox(
                height: semiEdge,
              ),
              header(),
              dashboard(),
              myAccount(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: 76,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: whiteColor,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade200,
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
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SizedBox(
              width: 5,
            ),
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
                imageUrl: 'assets/icon-history.png',
                isActive: false,
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
                imageUrl: 'assets/icon-profile-green.png',
                isActive: false,
                name: 'profile',
              ),
            ),
            SizedBox(
              width: 5,
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

  Widget header() {
    return Container(
      child: Column(
        children: [
          Center(
            child: Text(
              'Profile',
              style: titleTextStyle.copyWith(
                fontSize: 18,
              ),
            ),
          ),
          SizedBox(
            height: edge,
          ),
          Row(
            children: [
              Image.asset(
                'assets/profile.png',
                width: 50,
              ),
              SizedBox(
                width: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Permata Medical',
                    style: titleTextStyle.copyWith(
                      fontSize: 18,
                      color: greenColor,
                    ),
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  Text(
                    'SIPA: 446/-153/1427/1-16',
                    style: descTextStyle.copyWith(
                      color: blackColor,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget dashboard() {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: edge,
          ),
          Text(
            'Dashboard',
            style: descTextStyle,
          ),
          SizedBox(
            height: semiEdge,
          ),
          Row(
            children: [
              Image.asset(
                'assets/ic-edit-profile.png',
                height: 24,
                width: 24,
              ),
              SizedBox(
                width: 15,
              ),
              Text(
                'Edit Profile',
                style: titleTextStyle,
              )
            ],
          ),
          SizedBox(
            height: semiEdge,
          ),
          Row(
            children: [
              Image.asset(
                'assets/ic-cost-center.png',
                height: 24,
                width: 24,
              ),
              SizedBox(
                width: 15,
              ),
              Text(
                'Cost Center',
                style: titleTextStyle,
              )
            ],
          ),
          SizedBox(
            height: semiEdge,
          ),
          Row(
            children: [
              Image.asset(
                'assets/ic-distributors.png',
                height: 24,
                width: 24,
              ),
              SizedBox(
                width: 15,
              ),
              Text(
                'Distributors',
                style: titleTextStyle,
              )
            ],
          ),
          SizedBox(
            height: semiEdge,
          ),
          Row(
            children: [
              Image.asset(
                'assets/ic-employees.png',
                height: 24,
                width: 24,
              ),
              SizedBox(
                width: 15,
              ),
              Text(
                'Employees',
                style: titleTextStyle,
              )
            ],
          ),
          SizedBox(
            height: semiEdge,
          ),
          Row(
            children: [
              Image.asset(
                'assets/ic-departements.png',
                height: 24,
                width: 24,
              ),
              SizedBox(
                width: 15,
              ),
              Text(
                'Departements',
                style: titleTextStyle,
              )
            ],
          ),
          SizedBox(
            height: semiEdge,
          ),
          Row(
            children: [
              Image.asset(
                'assets/ic-edit-profile.png',
                height: 24,
                width: 24,
              ),
              SizedBox(
                width: 15,
              ),
              Text(
                'Edit Profile',
                style: titleTextStyle,
              )
            ],
          ),
        ],
      ),
    );
  }

  Widget myAccount() {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: edge,
          ),
          Text(
            'My Account',
            style: descTextStyle,
          ),
          SizedBox(
            height: semiEdge,
          ),
          Text(
            'Switch to other employee',
            style: titleTextStyle.copyWith(
              color: greenColor,
            ),
          ),
          SizedBox(
            height: semiEdge,
          ),
          Text(
            'Log Out',
            style: titleTextStyle,
          ),
        ],
      ),
    );
  }
}
