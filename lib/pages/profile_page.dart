import 'package:apoo_flutter/pages/cost_center_page.dart';
import 'package:apoo_flutter/pages/edit_profile_page.dart';
import 'package:flutter/material.dart';

import '../theme.dart';
import '../widgets/bottom_navbar_item.dart';
import 'catalog_page.dart';
import 'departements_page.dart';
import 'distributors_page.dart';
import 'employees_page.dart';
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
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => EditProfilePage(),
                ),
              );
            },
            child: Row(
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
          ),
          SizedBox(
            height: semiEdge,
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CostCenterPage(),
                ),
              );
            },
            child: Row(
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
          ),
          SizedBox(
            height: semiEdge,
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DistributorsPage(),
                ),
              );
            },
            child: Row(
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
          ),
          SizedBox(
            height: semiEdge,
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => EmployeesPage(),
                ),
              );
            },
            child: Row(
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
          ),
          SizedBox(
            height: semiEdge,
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DepartementsPage(),
                ),
              );
            },
            child: Row(
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
          ),
          SizedBox(
            height: semiEdge,
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
