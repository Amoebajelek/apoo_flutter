import 'package:apoo_flutter/models/data_detail_transaction.dart';
import 'package:apoo_flutter/pages/base_page.dart';
import 'package:apoo_flutter/pages/purchasing/purchasing_order_list_page.dart';
import 'package:apoo_flutter/theme.dart';
import 'package:apoo_flutter/widgets/detail_transactions.dart';
import 'package:flutter/material.dart';

class DetailPurchasingCompletedPage extends StatefulWidget {
  @override
  State<DetailPurchasingCompletedPage> createState() =>
      _DetailPurchasingCompletedPageState();
}

class _DetailPurchasingCompletedPageState
    extends State<DetailPurchasingCompletedPage> {
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
                  imageUrl: 'assets/status-completed.png',
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
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (c) => AlertDialog(
                        content: Text(
                          'Printed!',
                        ),
                        actions: [
                          TextButton(
                            onPressed: () => Navigator.pop(context),
                            child: Text(
                              'Close',
                              style: descTextStyle.copyWith(
                                color: greenColor,
                              ),
                            ),
                          ),
                        ],
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
          'Detail Purchasing',
          style: titleTextStyle.copyWith(
            fontSize: 18,
          ),
        ),
      ),
    );
  }
}
