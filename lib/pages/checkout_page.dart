import 'package:apoo_flutter/models/data_product.dart';
import 'package:apoo_flutter/theme.dart';
import 'package:apoo_flutter/widgets/detail_catalog.dart';
import 'package:apoo_flutter/widgets/detail_checkout.dart';
import 'package:flutter/material.dart';

import 'catalog_page.dart';
import 'detail_catalog_page.dart';

class CheckoutPage extends StatefulWidget {
  @override
  State<CheckoutPage> createState() => _CheckoutPageState();
}

class _CheckoutPageState extends State<CheckoutPage> {
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
              SizedBox(
                height: edge,
              ),
              DetailCheckout(
                DataProduct(
                  name: 'Paracetamol Biofarma Firma 10 mg 1 Strip 10 Tablet',
                  price: '6.500',
                  unit: 'Strips',
                  producent: 'PT Biofarma Firma',
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: 135,
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
            Container(
              height: 50,
              width: MediaQuery.of(context).size.width - (2 * edge),
              decoration: BoxDecoration(
                color: greenColor,
                border: Border.all(
                  color: greenColor,
                  width: 1.0,
                  style: BorderStyle.solid,
                ),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Center(
                child: Text(
                  'Choose Payment',
                  style: titleTextStyle.copyWith(
                    fontSize: 18,
                    color: whiteColor,
                  ),
                  textAlign: TextAlign.center,
                ),
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
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailCatalogPage(),
                ),
              );
            },
            child: Image.asset(
              'assets/ic-back.png',
              height: 30,
              width: 30,
            ),
          ),
          Spacer(),
          Center(
            child: Text(
              'Checkout',
              style: titleTextStyle.copyWith(
                fontSize: 18,
              ),
            ),
          ),
          Spacer(),
          Container(
            height: 30,
            width: 30,
          ),
        ],
      ),
    );
  }
}
