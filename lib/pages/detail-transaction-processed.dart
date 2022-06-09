import 'package:apoo_flutter/models/data_detail_transaction.dart';
import 'package:apoo_flutter/models/data_distributors.dart';
import 'package:apoo_flutter/pages/history_page.dart';
import 'package:apoo_flutter/pages/home_page.dart';
import 'package:apoo_flutter/pages/profile_page.dart';
import 'package:apoo_flutter/theme.dart';
import 'package:apoo_flutter/widgets/bottom_navbar_item.dart';
import 'package:apoo_flutter/widgets/detail_transactions.dart';
import 'package:apoo_flutter/widgets/list_distributor.dart';
import 'package:apoo_flutter/widgets/top_distributor.dart';
import 'package:flutter/material.dart';

import 'catalog_page.dart';

class DetailTransactionProcessed extends StatefulWidget {
  @override
  State<DetailTransactionProcessed> createState() =>
      _DetailTransactionProcessedState();
}

class _DetailTransactionProcessedState
    extends State<DetailTransactionProcessed> {
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
              DetailTransactions(
                DataDetailTransaction(
                  id: 1,
                  code: '#3882128763678',
                  cashier: 'Rachel Pandawa (Cashier-1)',
                  imageUrl: 'assets/img-process.png',
                  product: 'Bodrexin Medical Center 15 gr 10 Tablet 1 Strip',
                  quantity: '3',
                  unit: 'strips',
                  price: '8.000',
                  payment: 'Credit Card (BCA)',
                ),
              ),
              SizedBox(
                height: 80,
              ),
              Container(
                height: 50,
                width: MediaQuery.of(context).size.width - (2 * edge),
                margin: EdgeInsets.symmetric(horizontal: edge),
                child: RaisedButton(
                  onPressed: () {},
                  color: greenColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Row(
                    children: [
                      Spacer(),
                      Text(
                        'Print',
                        style: buttonTextStyle,
                      ),
                      Spacer(),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: semiEdge,
              ),
              Container(
                height: 50,
                width: MediaQuery.of(context).size.width - (2 * edge),
                margin: EdgeInsets.symmetric(horizontal: edge),
                child: RaisedButton(
                  onPressed: () {},
                  color: whiteColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Row(
                    children: [
                      Spacer(),
                      Text(
                        'Back to home',
                        style: titleTextStyle,
                      ),
                      Spacer(),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: edge,
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
        children: [
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => HistoryPage(),
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
              'Detail Transaction',
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
