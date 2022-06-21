import 'package:apoo_flutter/models/data_option_payment.dart';
import 'package:apoo_flutter/pages/catalog/loading_catalog_page.dart';
import 'package:apoo_flutter/theme.dart';
import 'package:apoo_flutter/widgets/detail_option_payment.dart';
import 'package:flutter/material.dart';

import 'checkout_catalog_page.dart';

class OptionPaymentCatalogPage extends StatefulWidget {
  @override
  State<OptionPaymentCatalogPage> createState() =>
      _OptionPaymentCatalogPageState();
}

class _OptionPaymentCatalogPageState extends State<OptionPaymentCatalogPage> {
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
              SizedBox(
                height: edge,
              ),
              cod(),
              SizedBox(
                height: edge,
              ),
              creditCard(),
              SizedBox(
                height: edge,
              ),
              merchant(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: 135,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: whiteColor,
          borderRadius: BorderRadius.circular(10),
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
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LoadingCatalogPage(),
                  ),
                );
              },
              child: Container(
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
                    'Pay',
                    style: titleTextStyle.copyWith(
                      fontSize: 18,
                      color: whiteColor,
                    ),
                    textAlign: TextAlign.center,
                  ),
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
              Navigator.pop(
                context,
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
              'Payment',
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

  Widget cod() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Cash on Delivery',
          style: titleTextStyle,
        ),
        SizedBox(
          height: semiEdge,
        ),
        DetailOptionPayment(
          DataOptionPayment(
            title: 'Cash on Delivery (COD)',
            caption: 'via Apotek terdekat',
          ),
        ),
      ],
    );
  }

  Widget creditCard() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Credit Card',
          style: titleTextStyle,
        ),
        SizedBox(
          height: semiEdge,
        ),
        DetailOptionPayment(
          DataOptionPayment(
            title: 'BCA',
            caption: '0390 7798134134',
          ),
        ),
        SizedBox(
          height: semiEdge,
        ),
        DetailOptionPayment(
          DataOptionPayment(
            title: 'BNI',
            caption: '022 87141843746',
          ),
        ),
        SizedBox(
          height: semiEdge,
        ),
        DetailOptionPayment(
          DataOptionPayment(
            title: 'BRI',
            caption: '0543 87681734100',
          ),
        ),
      ],
    );
  }

  Widget merchant() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Merchant',
          style: titleTextStyle,
        ),
        SizedBox(
          height: semiEdge,
        ),
        DetailOptionPayment(
          DataOptionPayment(
            title: 'Alfamart',
            caption: 'via Alfamart terdekat',
          ),
        ),
        SizedBox(
          height: semiEdge,
        ),
        DetailOptionPayment(
          DataOptionPayment(
            title: 'Indomart',
            caption: 'via Indomart terdekat',
          ),
        ),
        SizedBox(
          height: edge,
        ),
      ],
    );
  }
}
