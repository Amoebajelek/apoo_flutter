import 'package:apoo_flutter/pages/add_catalog_product.dart';
import 'package:apoo_flutter/pages/detail_catalog_page.dart';
import 'package:apoo_flutter/pages/order_page.dart';
import 'package:apoo_flutter/theme.dart';
import 'package:flutter/material.dart';

import '../models/data_product.dart';
import '../widgets/top_product.dart';

class DistributorCatalogPage extends StatefulWidget {
  @override
  State<DistributorCatalogPage> createState() => _DistributorCatalogPageState();
}

class _DistributorCatalogPageState extends State<DistributorCatalogPage> {
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
              profile(),
              search(),
              SizedBox(
                height: semiEdge,
              ),
              tags(),
              findYourMedicine(),
              SizedBox(
                height: semiEdge,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget header() {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => OrderPage(),
                ),
              );
            },
            child: Image.asset(
              'assets/ic-back.png',
              height: 30,
              width: 30,
            ),
          ),
          Center(
            child: Text(
              'Distributor Catalog',
              style: titleTextStyle.copyWith(
                fontSize: 18,
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => AddCatalogProduct(),
                ),
              );
            },
            child: Image.asset(
              'assets/icon-add-product.png',
              height: 30,
              width: 30,
            ),
          ),
        ],
      ),
    );
  }

  Widget profile() {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: edge,
      ),
      child: Container(
        child: Column(
          children: [
            Image.asset(
              'assets/img-distributor.png',
              height: 140,
              width: 140,
            ),
            SizedBox(
              height: semiEdge,
            ),
            Text(
              'Kalbe Farma',
              style: titleTextStyle.copyWith(
                color: greenColor,
                fontSize: 22,
                fontWeight: FontWeight.w800,
              ),
            ),
            Text(
              'Kota Bandung',
              style: descTextStyle.copyWith(
                color: blackColor,
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget search() {
    return ClipRRect(
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
    );
  }

  Widget tags() {
    return Padding(
      padding: EdgeInsets.only(
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
              width: 115,
              decoration: BoxDecoration(
                color: greenColor,
                border: Border.all(
                  color: greenColor,
                  width: 1.0,
                  style: BorderStyle.solid,
                ),
                borderRadius: BorderRadius.circular(5),
              ),
              child: Center(
                child: Text(
                  'Paracetamol',
                  style: titleTextStyle.copyWith(
                    fontSize: 14,
                    color: whiteColor,
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
              width: 115,
              decoration: BoxDecoration(
                color: whiteColor,
                border: Border.all(
                  color: greenColor,
                  width: 1.0,
                  style: BorderStyle.solid,
                ),
                borderRadius: BorderRadius.circular(5),
              ),
              child: Center(
                child: Text(
                  'FG Throches',
                  style: titleTextStyle.copyWith(
                    fontSize: 14,
                    color: greenColor,
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
              width: 115,
              decoration: BoxDecoration(
                color: whiteColor,
                border: Border.all(
                  color: greenColor,
                  width: 1.0,
                  style: BorderStyle.solid,
                ),
                borderRadius: BorderRadius.circular(5),
              ),
              child: Center(
                child: Text(
                  'Caffein',
                  style: titleTextStyle.copyWith(
                    fontSize: 14,
                    color: greenColor,
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
              width: 115,
              decoration: BoxDecoration(
                color: whiteColor,
                border: Border.all(
                  color: greenColor,
                  width: 1.0,
                  style: BorderStyle.solid,
                ),
                borderRadius: BorderRadius.circular(5),
              ),
              child: Center(
                child: Text(
                  'Amoxillin',
                  style: titleTextStyle.copyWith(
                    fontSize: 14,
                    color: greenColor,
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
              width: 115,
              decoration: BoxDecoration(
                color: whiteColor,
                border: Border.all(
                  color: greenColor,
                  width: 1.0,
                  style: BorderStyle.solid,
                ),
                borderRadius: BorderRadius.circular(5),
              ),
              child: Center(
                child: Text(
                  'Amiodrone',
                  style: titleTextStyle.copyWith(
                    fontSize: 14,
                    color: greenColor,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            SizedBox(
              width: semiEdge,
            ),
          ],
        ),
      ),
    );
  }

  Widget findYourMedicine() {
    return Container(
      child: Column(
        children: [
          SizedBox(
            height: semiEdge,
          ),
          Container(
            child: Column(
              children: [
                Row(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DetailCatalogPage(),
                          ),
                        );
                      },
                      child: Expanded(
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
                SizedBox(
                  height: semiEdge,
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
