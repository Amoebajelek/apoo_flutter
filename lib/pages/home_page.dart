import 'package:apoo_flutter/models/data_lastTransactions.dart';
import 'package:apoo_flutter/models/data_tipsAndGuides.dart';
import 'package:apoo_flutter/widgets/last_transactions.dart';
import 'package:apoo_flutter/widgets/tips_and_guides.dart';
import 'package:apoo_flutter/widgets/top_distributor.dart';
import 'package:apoo_flutter/widgets/top_selling_product.dart';
import 'package:flutter/material.dart';

import '../models/data_distributors.dart';
import '../models/data_product.dart';
import '../theme.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isEmailValid = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: edge),
          child: ListView(
            children: [
              // Greeting
              Row(
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
              // End Greeting

              SizedBox(
                height: semiEdge,
              ),

              // Search
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
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
                      color:
                          isEmailValid ? Color(0xff2A2B3D) : Color(0xffFD4F56),
                    ),
                  ),
                ],
              ),
              // End Search

              SizedBox(
                height: edge,
              ),

              // Top Distributor
              Column(
                children: [
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
              // End Top Distributor

              // Top Selling Product
              Padding(
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
              // End Top Selling Product

              // Log Transaction
              Padding(
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
              // End Last Transaction

              // Tips and Guides
              Padding(
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
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
