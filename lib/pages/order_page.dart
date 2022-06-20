import 'package:apoo_flutter/models/data_distributors.dart';
import 'package:apoo_flutter/pages/history_page.dart';
import 'package:apoo_flutter/pages/home_page.dart';
import 'package:apoo_flutter/pages/profile_page.dart';
import 'package:apoo_flutter/theme.dart';
import 'package:apoo_flutter/widgets/bottom_navbar_item.dart';
import 'package:apoo_flutter/widgets/list_distributor.dart';
import 'package:apoo_flutter/widgets/top_distributor.dart';
import 'package:flutter/material.dart';

import 'catalog_page.dart';
import 'order/distributor_catalog_page.dart';

class OrderPage extends StatefulWidget {
  @override
  State<OrderPage> createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
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
              search(),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DistributorCatalogPage(),
                    ),
                  );
                },
                child: topDistributor(),
              ),
              findYourDistributor(),
            ],
          ),
        ),
      ),
    );
  }

  Widget header() {
    return Container(
      child: Center(
        child: Text(
          'Order',
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
      child: Container(
        decoration: BoxDecoration(
          color: Color(0xffFFFFFF),
          borderRadius: BorderRadius.circular(12),
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              decoration: InputDecoration(
                  fillColor: whiteColor,
                  prefixIcon: Icon(Icons.search),
                  hintText: 'Search your medicine',
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
                'Recommended for you',
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
            height: semiEdge - 2,
          ),
          Container(
            height: 126,
            child: ListView(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.symmetric(
                vertical: 10,
              ),
              children: [
                SizedBox(
                  width: semiEdge,
                ),
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
                SizedBox(
                  width: edge,
                ),
              ],
            ),
          ),
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
                'Top Selling Distributor',
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
                SizedBox(
                  width: semiEdge,
                ),
                ListDistributor(
                  DataDistributor(
                    id: 1,
                    imageUrl: 'assets/top1.png',
                    name: 'Paracetamol',
                    stocks: '71',
                  ),
                ),
                SizedBox(
                  width: 12,
                ),
                ListDistributor(
                  DataDistributor(
                    id: 2,
                    imageUrl: 'assets/top2.png',
                    name: 'Bodrexin',
                    stocks: '102',
                  ),
                ),
                SizedBox(
                  width: 12,
                ),
                ListDistributor(
                  DataDistributor(
                    id: 3,
                    imageUrl: 'assets/top3.png',
                    name: 'Bodrex',
                    stocks: '102',
                  ),
                ),
                SizedBox(
                  width: 12,
                ),
                ListDistributor(
                  DataDistributor(
                    id: 4,
                    imageUrl: 'assets/top1.png',
                    name: 'FG Thochest',
                    stocks: '213',
                  ),
                ),
                SizedBox(
                  width: 12,
                ),
                ListDistributor(
                  DataDistributor(
                    id: 5,
                    imageUrl: 'assets/top2.png',
                    name: 'Combantrin',
                    stocks: '112',
                  ),
                ),
                SizedBox(
                  width: semiEdge,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget findYourDistributor() {
    return Container(
      child: Column(
        children: [
          SizedBox(
            height: edge,
          ),
          Row(
            children: [
              Text(
                'Find Your Distributors',
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
                      child: ListDistributor(
                        DataDistributor(
                          id: 1,
                          imageUrl: 'assets/dist1.png',
                          name: 'Kalbe Farma',
                          location: 'Kota Bandung',
                          stocks: '71',
                        ),
                      ),
                    ),
                    SizedBox(
                      width: semiEdge,
                    ),
                    Expanded(
                      child: ListDistributor(
                        DataDistributor(
                          id: 2,
                          imageUrl: 'assets/dist2.png',
                          name: 'Sanbe Farma',
                          location: 'Kota Bandung',
                          stocks: '102',
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
                      child: ListDistributor(
                        DataDistributor(
                          id: 3,
                          imageUrl: 'assets/dist3.png',
                          name: 'Dexa Medica',
                          location: 'Kota Bandung',
                          stocks: '381',
                        ),
                      ),
                    ),
                    SizedBox(
                      width: semiEdge,
                    ),
                    Expanded(
                      child: ListDistributor(
                        DataDistributor(
                          id: 4,
                          imageUrl: 'assets/dist4.png',
                          name: 'Pharos Indonesia',
                          location: 'Kota Bandung',
                          stocks: '143',
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
                      child: ListDistributor(
                        DataDistributor(
                          id: 5,
                          imageUrl: 'assets/dist5.png',
                          name: 'Tempo Scan Pasific Bandung',
                          location: 'Kota Bandung',
                          stocks: '347',
                        ),
                      ),
                    ),
                    SizedBox(
                      width: semiEdge,
                    ),
                    Expanded(
                      child: ListDistributor(
                        DataDistributor(
                          id: 6,
                          imageUrl: 'assets/dist2.png',
                          name: 'Farmindo',
                          location: 'Kota Bandung',
                          stocks: '222',
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: ListDistributor(
                        DataDistributor(
                          id: 7,
                          imageUrl: 'assets/dist3.png',
                          name: 'Apex Pharma Indonesia',
                          location: 'Kota Bandung',
                          stocks: '711',
                        ),
                      ),
                    ),
                    SizedBox(
                      width: semiEdge,
                    ),
                    Expanded(
                      child: ListDistributor(
                        DataDistributor(
                          id: 8,
                          imageUrl: 'assets/dist1.png',
                          name: 'Armoxindo Farma',
                          location: 'Kota Bandung',
                          stocks: '102',
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
