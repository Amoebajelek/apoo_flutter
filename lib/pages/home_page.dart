import 'package:apoo_flutter/models/data_lastTransactions.dart';
import 'package:apoo_flutter/models/data_tipsAndGuides.dart';
import 'package:apoo_flutter/pages/catalog_page.dart';
import 'package:apoo_flutter/widgets/bottom_navbar_item.dart';
import 'package:apoo_flutter/widgets/last_transactions.dart';
import 'package:apoo_flutter/widgets/tips_and_guides.dart';
import 'package:apoo_flutter/widgets/top_distributor.dart';
import 'package:apoo_flutter/widgets/top_selling_product.dart';
import 'package:flutter/material.dart';

import '../models/data_distributors.dart';
import '../models/data_product.dart';
import '../theme.dart';
import 'history_page.dart';
import 'order_page.dart';
import 'profile_page.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
              // Greeting
              header(),
              // End Greeting

              // Search
              search(),
              // End Search

              // Highlight
              highlight(),
              // End Highlight

              // Top Distributor
              topDistributor(),
              // End Top Distributor

              // Top Selling Product
              topSellingProduct(),
              // End Top Selling Product

              // Log Transaction
              lastTransaction(),
              // End Last Transaction

              // Tips and Guides
              tipsAndGuides(),
              // End Tips and Guider
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
                imageUrl: 'assets/icon-home-green.png',
                isActive: true,
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
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Hello,',
                style: helloTextStyle,
              ),
              Text(
                'Permata Medical',
                style: titleTextStyle.copyWith(
                  fontSize: 18,
                ),
              ),
            ],
          ),
          Spacer(),
          Image.asset(
            'assets/notification.png',
            width: 50,
          ),
          SizedBox(
            width: 10,
          ),
          Image.asset(
            'assets/profile.png',
            width: 50,
          ),
        ],
      ),
    );
  }

  Widget highlight() {
    return Padding(
      padding: EdgeInsets.only(
        top: semiEdge,
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: Container(
          height: 191,
          width: 315,
          color: Color(0xffDBFFF3),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 20,
              ),
              Text(
                'CURRENT BALANCE',
                style: descTextStyle.copyWith(
                  color: secondColor,
                ),
              ),
              SizedBox(
                height: 2,
              ),
              Text(
                'RP 2.421.400',
                style: titleTextStyle.copyWith(
                  color: greenColor,
                  fontSize: 28,
                  fontWeight: FontWeight.w900,
                ),
              ),
              Spacer(),
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Container(
                  height: 60,
                  width: 259,
                  color: whiteColor,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Image.asset(
                        'assets/icon-balance-active.png',
                        height: 40,
                        width: 40,
                      ),
                      Image.asset(
                        'assets/icon-transactions.png',
                        height: 40,
                        width: 40,
                      ),
                      Image.asset(
                        'assets/icon-profit.png',
                        height: 40,
                        width: 40,
                      ),
                      Image.asset(
                        'assets/icon-expences.png',
                        height: 40,
                        width: 40,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
            ],
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
                    hintText: 'Search your medicine...',
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

  Widget topDistributor() {
    return Container(
      child: Column(
        children: [
          SizedBox(
            height: edge,
          ),
          Row(
            children: [
              Text(
                'Top Distributor',
                style: titleTextStyle,
              ),
              Spacer(),
              Text(
                'See all',
                style: seeAllTextStyle,
              )
            ],
          ),
          SizedBox(
            height: semiEdge,
          ),
          Container(
            height: 112,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                TopDistributor(
                  DataDistributor(
                    id: 1,
                    name: 'Kalbe Farma',
                    stocks: '241',
                    imageUrl: 'assets/topDist1.png',
                    location: 'Kota Bandung',
                  ),
                ),
                SizedBox(
                  width: semiEdge,
                ),
                TopDistributor(
                  DataDistributor(
                    id: 2,
                    name: 'Sanbe Farma',
                    stocks: '114',
                    imageUrl: 'assets/topDist2.png',
                    location: 'Kota Cimahi',
                  ),
                ),
                SizedBox(
                  width: semiEdge,
                ),
                TopDistributor(
                  DataDistributor(
                    id: 3,
                    name: 'Dexa Medica',
                    stocks: '321',
                    imageUrl: 'assets/topDist3.png',
                    location: 'Kota Sukabumi',
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget topSellingProduct() {
    return Container(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: edge),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  'Top Selling Product',
                  style: titleTextStyle,
                ),
                Spacer(),
                Text(
                  'See all',
                  style: seeAllTextStyle,
                )
              ],
            ),
            SizedBox(
              height: semiEdge,
            ),
            Column(
              children: [
                TopSellingProduct(
                  DataProduct(
                    id: 1,
                    name: 'Paracetamol',
                    producent: 'PT Kalbe Farma',
                    imageUrl: 'assets/top1.png',
                    price: '5000',
                  ),
                ),
                SizedBox(
                  height: semiEdge,
                ),
                TopSellingProduct(
                  DataProduct(
                    id: 2,
                    name: 'Bodrexin',
                    producent: 'PT Biofarma Firma',
                    imageUrl: 'assets/top2.png',
                    price: '7000',
                  ),
                ),
                SizedBox(
                  height: semiEdge,
                ),
                TopSellingProduct(
                  DataProduct(
                    id: 3,
                    name: 'FG Throcest',
                    producent: 'Dexa Medica',
                    imageUrl: 'assets/top3.png',
                    price: '8000',
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget lastTransaction() {
    return Container(
      child: Padding(
        padding: EdgeInsets.only(bottom: edge),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  'Last Transactions',
                  style: titleTextStyle,
                ),
                Spacer(),
                Text(
                  'See all',
                  style: seeAllTextStyle,
                )
              ],
            ),
            SizedBox(
              height: semiEdge,
            ),
            LastTransactions(
              DataTransactions(
                  id: 1,
                  code: '#3882128763678',
                  time: '13 : 32 PM',
                  price: '50.000'),
            ),
            SizedBox(
              height: semiEdge,
            ),
            LastTransactions(
              DataTransactions(
                  id: 2,
                  code: '#3882128763678',
                  time: '13 : 30 PM',
                  price: '50.000'),
            ),
            SizedBox(
              height: semiEdge,
            ),
            LastTransactions(
              DataTransactions(
                  id: 3,
                  code: '#3882128763678',
                  time: '13 : 25 PM',
                  price: '50.000'),
            ),
          ],
        ),
      ),
    );
  }

  Widget tipsAndGuides() {
    return Container(
      child: Padding(
        padding: EdgeInsets.only(bottom: edge),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  'Tips and Guides',
                  style: titleTextStyle,
                ),
                Spacer(),
                Text(
                  'See all',
                  style: seeAllTextStyle,
                )
              ],
            ),
            SizedBox(
              height: semiEdge,
            ),
            TipsandGuides(
              DataTipsandGuides(
                id: 1,
                imageUrl: 'assets/bgTips1.png',
                title: 'How to add new product?',
                caption: 'Read and update your product',
              ),
            ),
            SizedBox(
              height: semiEdge,
            ),
            TipsandGuides(
              DataTipsandGuides(
                id: 1,
                imageUrl: 'assets/bgTips2.png',
                title: 'Upgrade selling points',
                caption: 'Increase your sales now',
              ),
            ),
            // SizedBox(
            //   height: 30,
            // ),
          ],
        ),
      ),
    );
  }
}
