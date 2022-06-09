import 'package:apoo_flutter/pages/detail-transaction-processed.dart';
import 'package:apoo_flutter/pages/home_page.dart';
import 'package:apoo_flutter/pages/order_page.dart';
import 'package:apoo_flutter/pages/profile_page.dart';
import 'package:apoo_flutter/theme.dart';
import 'package:apoo_flutter/widgets/bottom_navbar_item.dart';
import 'package:flutter/material.dart';

import 'catalog_page.dart';

class HistoryPage extends StatefulWidget {
  @override
  State<HistoryPage> createState() => _HistoryPageState();
}

class _HistoryPageState extends State<HistoryPage> {
  bool isEmailValid = true;

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
              SizedBox(
                height: semiEdge,
              ),
              header(),
              search(),
              tags(),
              lastTransaction(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: 76,
        width: MediaQuery.of(context).size.width - (2 * edge),
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

  Widget header() {
    return Container(
      child: Center(
        child: Text(
          'History',
          style: titleTextStyle.copyWith(
            fontSize: 18,
          ),
        ),
      ),
    );
  }

  Widget search() {
    return Padding(
      padding: EdgeInsets.only(
        top: semiEdge,
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: Container(
          color: whiteColor,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFormField(
                decoration: InputDecoration(
                    fillColor: whiteColor,
                    prefixIcon: Icon(Icons.search),
                    hintText: 'Search your transaction...',
                    hintStyle: descTextStyle.copyWith(
                      color: thirdColor,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide.none,
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide.none,
                    )),
                style: TextStyle(
                  color: isEmailValid ? Color(0xff2A2B3D) : Color(0xffFD4F56),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget tags() {
    return Padding(
      padding: EdgeInsets.only(
        top: semiEdge,
        bottom: semiEdge,
      ),
      child: Container(
          height: 33,
          width: MediaQuery.of(context).size.width - (2 * edge),
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              SizedBox(
                width: semiEdge,
              ),
              Container(
                height: 30,
                width: 100,
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: blackColor,
                      width: 2.0,
                      style: BorderStyle.solid,
                    ),
                  ),
                ),
                child: Center(
                  child: Text(
                    'Today (31)',
                    style: titleTextStyle.copyWith(
                      fontSize: 14,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              SizedBox(
                width: semiEdge,
              ),
              Container(
                height: 30,
                width: 100,
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: whiteColor,
                      width: 2.0,
                      style: BorderStyle.solid,
                    ),
                  ),
                ),
                child: Center(
                  child: Text(
                    'Yesterday',
                    style: titleTextStyle.copyWith(
                      fontSize: 14,
                      color: thirdColor,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              SizedBox(
                width: semiEdge,
              ),
              Container(
                height: 30,
                width: 100,
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: whiteColor,
                      width: 2.0,
                      style: BorderStyle.solid,
                    ),
                  ),
                ),
                child: Center(
                  child: Text(
                    'This Week',
                    style: titleTextStyle.copyWith(
                      fontSize: 14,
                      color: thirdColor,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              SizedBox(
                width: semiEdge,
              ),
              Container(
                height: 30,
                width: 100,
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: whiteColor,
                      width: 2.0,
                      style: BorderStyle.solid,
                    ),
                  ),
                ),
                child: Center(
                  child: Text(
                    'This Month',
                    style: titleTextStyle.copyWith(
                      fontSize: 14,
                      color: thirdColor,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              SizedBox(
                width: semiEdge,
              ),
              Container(
                height: 30,
                width: 100,
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: whiteColor,
                      width: 2.0,
                      style: BorderStyle.solid,
                    ),
                  ),
                ),
                child: Center(
                  child: Text(
                    '3 Months',
                    style: titleTextStyle.copyWith(
                      fontSize: 14,
                      color: thirdColor,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              SizedBox(
                width: semiEdge,
              ),
              Container(
                height: 30,
                width: 100,
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: whiteColor,
                      width: 2.0,
                      style: BorderStyle.solid,
                    ),
                  ),
                ),
                child: Center(
                  child: Text(
                    '6 Months',
                    style: titleTextStyle.copyWith(
                      fontSize: 14,
                      color: thirdColor,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              SizedBox(
                width: semiEdge,
              ),
              Container(
                height: 30,
                width: 100,
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: whiteColor,
                      width: 2.0,
                      style: BorderStyle.solid,
                    ),
                  ),
                ),
                child: Center(
                  child: Text(
                    'This Year',
                    style: titleTextStyle.copyWith(
                      fontSize: 14,
                      color: thirdColor,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
          )),
    );
  }

  Widget lastTransaction() {
    return Container(
      child: Padding(
        padding: EdgeInsets.only(bottom: edge),
        child: Column(
          children: [
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailTransactionProcessed(),
                  ),
                );
              },
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Container(
                  height: 90,
                  width: 315,
                  color: whiteColor,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 12,
                          vertical: 12,
                        ),
                        child: Image.asset(
                          'assets/transaction.png',
                          width: 66,
                          height: 66,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                          vertical: 20,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '#3882128763678',
                              style: titleTextStyle,
                            ),
                            Spacer(),
                            Container(
                              height: 24,
                              width: 80,
                              decoration: BoxDecoration(
                                color: Color(0xffFFD124),
                                border: Border.all(
                                  color: Color(0xffFFD124),
                                  width: 1.0,
                                  style: BorderStyle.solid,
                                ),
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Center(
                                child: Text(
                                  'Credit Card',
                                  style: titleTextStyle.copyWith(
                                    fontWeight: FontWeight.w300,
                                    fontSize: 10,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Spacer(),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 20),
                        child: Column(
                          children: [
                            Text(
                              '13 : 32 PM',
                              style: descTextStyle.copyWith(
                                fontSize: 12,
                              ),
                            ),
                            Spacer(),
                            Text.rich(
                              TextSpan(
                                text: 'Rp.',
                                style: descTextStyle.copyWith(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 14,
                                  color: greenColor,
                                ),
                                children: [
                                  TextSpan(
                                    text: '50.000',
                                    style: descTextStyle.copyWith(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 14,
                                      color: greenColor,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              width: semiEdge,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: semiEdge,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Container(
                height: 90,
                width: 315,
                color: whiteColor,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 12,
                        vertical: 12,
                      ),
                      child: Image.asset(
                        'assets/transaction.png',
                        width: 66,
                        height: 66,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: 20,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '#3882128123456',
                            style: titleTextStyle,
                          ),
                          Spacer(),
                          Container(
                            height: 24,
                            width: 120,
                            decoration: BoxDecoration(
                              color: Color(0xff9FE6CE),
                              border: Border.all(
                                color: Color(0xff9FE6CE),
                                width: 1.0,
                                style: BorderStyle.solid,
                              ),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Center(
                              child: Text(
                                'Cash on Delivery',
                                style: titleTextStyle.copyWith(
                                  fontWeight: FontWeight.w300,
                                  fontSize: 10,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Spacer(),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 20),
                      child: Column(
                        children: [
                          Text(
                            '13 : 30 PM',
                            style: descTextStyle.copyWith(
                              fontSize: 12,
                            ),
                          ),
                          Spacer(),
                          Text.rich(
                            TextSpan(
                              text: 'Rp.',
                              style: descTextStyle.copyWith(
                                fontWeight: FontWeight.w700,
                                fontSize: 14,
                                color: greenColor,
                              ),
                              children: [
                                TextSpan(
                                  text: '71.400',
                                  style: descTextStyle.copyWith(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 14,
                                    color: greenColor,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: semiEdge,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: semiEdge,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Container(
                height: 90,
                width: 315,
                color: whiteColor,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 12,
                        vertical: 12,
                      ),
                      child: Image.asset(
                        'assets/transaction.png',
                        width: 66,
                        height: 66,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: 20,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '#3882128666754',
                            style: titleTextStyle,
                          ),
                          Spacer(),
                          Container(
                            height: 24,
                            width: 80,
                            decoration: BoxDecoration(
                              color: Color(0xff0093AB),
                              border: Border.all(
                                color: Color(0xff0093AB),
                                width: 1.0,
                                style: BorderStyle.solid,
                              ),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Center(
                              child: Text(
                                'Merchant',
                                style: titleTextStyle.copyWith(
                                  fontWeight: FontWeight.w300,
                                  fontSize: 10,
                                  color: whiteColor,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Spacer(),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 20),
                      child: Column(
                        children: [
                          Text(
                            '13 : 28 PM',
                            style: descTextStyle.copyWith(
                              fontSize: 12,
                            ),
                          ),
                          Spacer(),
                          Text.rich(
                            TextSpan(
                              text: 'Rp.',
                              style: descTextStyle.copyWith(
                                fontWeight: FontWeight.w700,
                                fontSize: 14,
                                color: greenColor,
                              ),
                              children: [
                                TextSpan(
                                  text: '32.300',
                                  style: descTextStyle.copyWith(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 14,
                                    color: greenColor,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: semiEdge,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: semiEdge,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Container(
                height: 90,
                width: 315,
                color: whiteColor,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 12,
                        vertical: 12,
                      ),
                      child: Image.asset(
                        'assets/transaction.png',
                        width: 66,
                        height: 66,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: 20,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '#3882128763678',
                            style: titleTextStyle,
                          ),
                          Spacer(),
                          Container(
                            height: 24,
                            width: 80,
                            decoration: BoxDecoration(
                              color: Color(0xffFFD124),
                              border: Border.all(
                                color: Color(0xffFFD124),
                                width: 1.0,
                                style: BorderStyle.solid,
                              ),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Center(
                              child: Text(
                                'Credit Card',
                                style: titleTextStyle.copyWith(
                                  fontWeight: FontWeight.w300,
                                  fontSize: 10,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Spacer(),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 20),
                      child: Column(
                        children: [
                          Text(
                            '13 : 32 PM',
                            style: descTextStyle.copyWith(
                              fontSize: 12,
                            ),
                          ),
                          Spacer(),
                          Text.rich(
                            TextSpan(
                              text: 'Rp.',
                              style: descTextStyle.copyWith(
                                fontWeight: FontWeight.w700,
                                fontSize: 14,
                                color: greenColor,
                              ),
                              children: [
                                TextSpan(
                                  text: '50.000',
                                  style: descTextStyle.copyWith(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 14,
                                    color: greenColor,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: semiEdge,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
