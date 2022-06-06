import 'package:apoo_flutter/models/data_distributors.dart';
import 'package:apoo_flutter/models/data_product.dart';
import 'package:apoo_flutter/pages/home_page.dart';
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
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: edge,
            vertical: edge,
          ),
          child: ListView(
            children: [
              header(),
              search(),
              topDistributor(),
              topProduct(),
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
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: semiEdge,
          ),
          TextFormField(
            decoration: InputDecoration(
                fillColor: whiteColor,
                prefixIcon: Icon(Icons.search),
                hintText: 'Seach your medicine',
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

  Widget topProduct() {
    return Container(
      child: Column(
        children: [
          SizedBox(
            height: edge,
          ),
          Row(
            children: [
              Text(
                'Top Product',
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
                  ),
                ),
                TopProduct(
                  DataProduct(
                    id: 2,
                    imageUrl: 'assets/top1.png',
                    name: 'Paracetamol',
                    price: '6500',
                    stocks: '71',
                  ),
                ),
                TopProduct(
                  DataProduct(
                    id: 3,
                    imageUrl: 'assets/top1.png',
                    name: 'Paracetamol',
                    price: '6500',
                    stocks: '71',
                  ),
                ),
                TopProduct(
                  DataProduct(
                    id: 4,
                    imageUrl: 'assets/top1.png',
                    name: 'Paracetamol',
                    price: '6500',
                    stocks: '71',
                  ),
                ),
                TopProduct(
                  DataProduct(
                    id: 5,
                    imageUrl: 'assets/top1.png',
                    name: 'Paracetamol',
                    price: '6500',
                    stocks: '71',
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
