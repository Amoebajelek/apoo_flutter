import 'package:apoo_flutter/models/data_distributors.dart';
import 'package:apoo_flutter/models/data_product.dart';
import 'package:apoo_flutter/pages/purchasing/checkout_purchasing_page.dart';
import 'package:apoo_flutter/theme.dart';
import 'package:apoo_flutter/widgets/top_distributor.dart';
import 'package:apoo_flutter/widgets/top_product.dart';
import 'package:flutter/material.dart';

import 'purchasing/distributor_catalog_page.dart';
import 'sales/detail_sales_page.dart';

class SalesPage extends StatefulWidget {
  @override
  State<SalesPage> createState() => _SalesPageState();
}

class _SalesPageState extends State<SalesPage> {
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
              findYourMedicine(),
            ],
          ),
        ),
      ),
    );
  }

  Widget header() {
    return Container(
      child: Row(
        children: [
          Container(
            height: 30,
            width: 30,
          ),
          Spacer(),
          Center(
            child: Text(
              'Sales',
              style: titleTextStyle.copyWith(
                fontSize: 18,
              ),
            ),
          ),
          Spacer(),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (c) => CheckoutPurchasingPage(),
                ),
              );
            },
            child: Image.asset(
              'assets/ic-cart.png',
              height: 28,
              width: 28,
            ),
          )
        ],
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
          )),
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
                'Find your medicines',
                style: titleTextStyle,
              ),
              Spacer(),
            ],
          ),
          SizedBox(
            height: semiEdge,
          ),
          tags(),
          SizedBox(
            height: semiEdge,
          ),
          Wrap(
            spacing: semiEdge,
            // runSpacing: 4.0,
            children: [
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailSalesPage(),
                    ),
                  );
                },
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
              TopProduct(
                DataProduct(
                  id: 2,
                  imageUrl: 'assets/prod2.png',
                  name: 'Acarbose',
                  price: '3.500',
                  stocks: '102',
                  unit: ' strips',
                ),
              ),
              TopProduct(
                DataProduct(
                  id: 3,
                  imageUrl: 'assets/prod3.png',
                  name: 'Amiodrone',
                  price: '4.000',
                  stocks: '381',
                  unit: ' strips',
                ),
              ),
              TopProduct(
                DataProduct(
                  id: 4,
                  imageUrl: 'assets/prod4.png',
                  name: 'Allylestrenol',
                  price: '5.000',
                  stocks: '143',
                  unit: ' strips',
                ),
              ),
              TopProduct(
                DataProduct(
                  id: 5,
                  imageUrl: 'assets/prod5.png',
                  name: 'Amineptine',
                  price: '7.000',
                  stocks: '347',
                  unit: ' strips',
                ),
              ),
              TopProduct(
                DataProduct(
                  id: 6,
                  imageUrl: 'assets/prod6.png',
                  name: 'Amoxapine',
                  price: '4.500',
                  stocks: '222',
                  unit: ' strips',
                ),
              ),
              TopProduct(
                DataProduct(
                  id: 7,
                  imageUrl: 'assets/prod7.png',
                  name: 'Ampicillin',
                  price: '6.500',
                  stocks: '711',
                  unit: ' strips',
                ),
              ),
              TopProduct(
                DataProduct(
                  id: 8,
                  imageUrl: 'assets/prod8.png',
                  name: 'Amoxillin',
                  price: '4.500',
                  stocks: '102',
                  unit: ' strips',
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
