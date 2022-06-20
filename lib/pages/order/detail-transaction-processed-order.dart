import 'package:apoo_flutter/models/data_detail_transaction.dart';
import 'package:apoo_flutter/pages/base_page.dart';
import 'package:apoo_flutter/pages/history_page.dart';
import 'package:apoo_flutter/pages/home_page.dart';
import 'package:apoo_flutter/pages/purchasing/purchasing_order_list_page.dart';
import 'package:apoo_flutter/theme.dart';
import 'package:apoo_flutter/widgets/detail_transactions.dart';
import 'package:flutter/material.dart';

class DetailTransactionProcessedOrder extends StatefulWidget {
  @override
  State<DetailTransactionProcessedOrder> createState() =>
      _DetailTransactionProcessedOrderState();
}

class _DetailTransactionProcessedOrderState
    extends State<DetailTransactionProcessedOrder> {
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
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => PurchasingOrderListPage(),
                    ),
                  );
                },
                child: Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width - (2 * edge),
                  decoration: BoxDecoration(
                      color: whiteColor,
                      border: Border.all(
                        color: greenColor,
                        width: 1.0,
                        style: BorderStyle.solid,
                      ),
                      borderRadius: BorderRadius.circular(12)),
                  child: Row(
                    children: [
                      Spacer(),
                      Text(
                        'Purchasing Order List',
                        style: buttonTextStyle.copyWith(
                          color: greenColor,
                        ),
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
                decoration: BoxDecoration(
                    color: Color(0xffF97F45),
                    border: Border.all(
                      color: Color(0xffF97F45),
                      width: 1.0,
                      style: BorderStyle.solid,
                    ),
                    borderRadius: BorderRadius.circular(12)),
                child: Row(
                  children: [
                    Spacer(),
                    Text(
                      'Cancel Order',
                      style: buttonTextStyle,
                    ),
                    Spacer(),
                  ],
                ),
              ),
              SizedBox(
                height: semiEdge,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => BasePage(),
                    ),
                  );
                },
                child: Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width - (2 * edge),
                  child: Row(
                    children: [
                      Spacer(),
                      Text(
                        'Back to home',
                        style: titleTextStyle.copyWith(
                          color: secondColor,
                        ),
                      ),
                      Spacer(),
                    ],
                  ),
                ),
              ),
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
      child: Center(
        child: Text(
          'Detail Transaction',
          style: titleTextStyle.copyWith(
            fontSize: 18,
          ),
        ),
      ),
    );
  }
}
