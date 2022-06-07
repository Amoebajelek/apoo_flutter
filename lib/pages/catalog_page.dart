import 'package:apoo_flutter/models/data_distributors.dart';
import 'package:apoo_flutter/models/data_product.dart';
import 'package:apoo_flutter/pages/history_page.dart';
import 'package:apoo_flutter/pages/home_page.dart';
import 'package:apoo_flutter/pages/login_page.dart';
import 'package:apoo_flutter/pages/order_page.dart';
import 'package:apoo_flutter/pages/profile_page.dart';
import 'package:apoo_flutter/theme.dart';
import 'package:apoo_flutter/widgets/bottom_navbar_item.dart';
import 'package:apoo_flutter/widgets/top_distributor.dart';
import 'package:apoo_flutter/widgets/top_product.dart';
import 'package:flutter/material.dart';

class CatalogPage extends StatefulWidget {
  @override
  State<CatalogPage> createState() => _CatalogPageState();
}

class _CatalogPageState extends State<CatalogPage> {
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
              header(),
              search(),
              topDistributor(),
              topSellingProduct(),
              // tags(),
              findYourMedicine(),
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
                imageUrl: 'assets/icon-catalog-green.png',
                isActive: true,
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
      child: Center(
        child: Text(
          'Catalog',
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
          decoration: BoxDecoration(
            color: Color(0xffFFFFFF),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFormField(
                decoration: InputDecoration(
                    fillColor: whiteColor,
                    prefixIcon: Icon(Icons.search),
                    hintText: 'Find your medicine',
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
      child: Column(
        children: [
          SizedBox(
            height: edge,
          ),
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
          Container(
            height: 230,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                TopProduct(
                  DataProduct(
                    id: 1,
                    imageUrl: 'assets/top1.png',
                    name: 'Paracetamol',
                    price: '6500',
                    stocks: '71',
                    unit: ' strips',
                  ),
                ),
                SizedBox(
                  width: 12,
                ),
                TopProduct(
                  DataProduct(
                    id: 2,
                    imageUrl: 'assets/top2.png',
                    name: 'Bodrexin',
                    price: '4500',
                    stocks: '102',
                    unit: ' strips',
                  ),
                ),
                SizedBox(
                  width: 12,
                ),
                TopProduct(
                  DataProduct(
                    id: 3,
                    imageUrl: 'assets/top3.png',
                    name: 'Bodrex',
                    price: '4500',
                    stocks: '102',
                    unit: ' strips',
                  ),
                ),
                SizedBox(
                  width: 12,
                ),
                TopProduct(
                  DataProduct(
                    id: 4,
                    imageUrl: 'assets/top1.png',
                    name: 'FG Thochest',
                    price: '4000',
                    stocks: '213',
                    unit: ' strips',
                  ),
                ),
                SizedBox(
                  width: 12,
                ),
                TopProduct(
                  DataProduct(
                    id: 5,
                    imageUrl: 'assets/top2.png',
                    name: 'Combantrin',
                    price: '5500',
                    stocks: '112',
                    unit: ' strips',
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget tags() {
    return ClipRRect(
      borderRadius: BorderRadius.circular(3),
      child: Container(
        height: 50,
        // width: MediaQuery.of(context).size.width - (2 * edge),
        // margin: EdgeInsets.symmetric(horizontal: edge),
        child: RaisedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => LoginPage(),
              ),
            );
          },
          color: greenColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          child: Row(
            children: [
              Spacer(),
              Text(
                'Get Started',
                style: buttonTextStyle,
              ),
              Spacer(),
            ],
          ),
        ),
      ),
    );
  }

  Widget findYourMedicine() {
    return Container(
      child: Column(
        children: [
          SizedBox(
            height: edge,
          ),
          Row(
            children: [
              Text(
                'FInd Your Medicine',
                style: titleTextStyle,
              ),
              Spacer(),
            ],
          ),
          SizedBox(
            height: semiEdge,
          ),
          Container(
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: TopProduct(
                        DataProduct(
                          id: 1,
                          imageUrl: 'assets/prod1.png',
                          name: 'Paracetamol',
                          price: '6.500',
                          stocks: '71',
                          unit: ' strips',
                        ),
                      ),
                    ),
                    SizedBox(
                      width: semiEdge,
                    ),
                    Expanded(
                      child: TopProduct(
                        DataProduct(
                          id: 2,
                          imageUrl: 'assets/prod2.png',
                          name: 'Acarbose',
                          price: '3.500',
                          stocks: '102',
                          unit: ' strips',
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: semiEdge,
                ),
                Row(
                  children: [
                    Expanded(
                      child: TopProduct(
                        DataProduct(
                          id: 3,
                          imageUrl: 'assets/prod3.png',
                          name: 'Amiodrone',
                          price: '4.000',
                          stocks: '381',
                          unit: ' strips',
                        ),
                      ),
                    ),
                    SizedBox(
                      width: semiEdge,
                    ),
                    Expanded(
                      child: TopProduct(
                        DataProduct(
                          id: 4,
                          imageUrl: 'assets/prod4.png',
                          name: 'Allylestrenol',
                          price: '5.000',
                          stocks: '143',
                          unit: ' strips',
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: semiEdge,
                ),
                Row(
                  children: [
                    Expanded(
                      child: TopProduct(
                        DataProduct(
                          id: 5,
                          imageUrl: 'assets/prod5.png',
                          name: 'Amineptine',
                          price: '7.000',
                          stocks: '347',
                          unit: ' strips',
                        ),
                      ),
                    ),
                    SizedBox(
                      width: semiEdge,
                    ),
                    Expanded(
                      child: TopProduct(
                        DataProduct(
                          id: 6,
                          imageUrl: 'assets/prod6.png',
                          name: 'Amoxapine',
                          price: '4.500',
                          stocks: '222',
                          unit: ' strips',
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: TopProduct(
                        DataProduct(
                          id: 7,
                          imageUrl: 'assets/prod7.png',
                          name: 'Ampicillin',
                          price: '6.500',
                          stocks: '711',
                          unit: ' strips',
                        ),
                      ),
                    ),
                    SizedBox(
                      width: semiEdge,
                    ),
                    Expanded(
                      child: TopProduct(
                        DataProduct(
                          id: 8,
                          imageUrl: 'assets/prod8.png',
                          name: 'Amoxillin',
                          price: '4.500',
                          stocks: '102',
                          unit: ' strips',
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
