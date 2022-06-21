import 'package:apoo_flutter/theme.dart';
import 'package:flutter/material.dart';

import 'detail_purchasing_order_page.dart';

class PurchasingOrderListPage extends StatefulWidget {
  @override
  State<PurchasingOrderListPage> createState() =>
      _PurchasingOrderListPageState();
}

class _PurchasingOrderListPageState extends State<PurchasingOrderListPage> {
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
              tags(),
              lastTransaction(),
              printButton(),
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
              'Purchasing Order List',
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

  Widget search() {
    return Padding(
      padding: EdgeInsets.only(
        top: semiEdge,
      ),
      child: ClipRRect(
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
      ),
    );
  }

  Widget tags() {
    return Padding(
      padding: EdgeInsets.only(
        top: semiEdge,
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
              width: 120,
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: blackColor,
                    width: 2.0,
                    style: BorderStyle.solid,
                  ),
                ),
              ),
              child: Center(
                child: Text(
                  'This Month (4)',
                  style: titleTextStyle.copyWith(
                    fontSize: 14,
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
              width: 100,
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: whiteColor,
                    width: 2.0,
                    style: BorderStyle.solid,
                  ),
                ),
              ),
              child: Center(
                child: Text(
                  '3 Months',
                  style: titleTextStyle.copyWith(
                    fontSize: 14,
                    color: thirdColor,
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
              width: 100,
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: whiteColor,
                    width: 2.0,
                    style: BorderStyle.solid,
                  ),
                ),
              ),
              child: Center(
                child: Text(
                  '6 Months',
                  style: titleTextStyle.copyWith(
                    fontSize: 14,
                    color: thirdColor,
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
              width: 100,
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: whiteColor,
                    width: 2.0,
                    style: BorderStyle.solid,
                  ),
                ),
              ),
              child: Center(
                child: Text(
                  'This Month',
                  style: titleTextStyle.copyWith(
                    fontSize: 14,
                    color: thirdColor,
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
              width: 100,
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: whiteColor,
                    width: 2.0,
                    style: BorderStyle.solid,
                  ),
                ),
              ),
              child: Center(
                child: Text(
                  '3 Months',
                  style: titleTextStyle.copyWith(
                    fontSize: 14,
                    color: thirdColor,
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
              width: 100,
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: whiteColor,
                    width: 2.0,
                    style: BorderStyle.solid,
                  ),
                ),
              ),
              child: Center(
                child: Text(
                  '6 Months',
                  style: titleTextStyle.copyWith(
                    fontSize: 14,
                    color: thirdColor,
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
              width: 100,
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: whiteColor,
                    width: 2.0,
                    style: BorderStyle.solid,
                  ),
                ),
              ),
              child: Center(
                child: Text(
                  'This Year',
                  style: titleTextStyle.copyWith(
                    fontSize: 14,
                    color: thirdColor,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget lastTransaction() {
    return Container(
      child: Padding(
        padding: EdgeInsets.only(bottom: edge),
        child: Column(
          children: [
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailPurchasingOrderPage(),
                  ),
                );
              },
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Container(
                  height: 90,
                  width: MediaQuery.of(context).size.width - (2 * edge),
                  color: whiteColor,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 12,
                          vertical: 12,
                        ),
                        child: Image.asset(
                          'assets/transaction.png',
                          width: 66,
                          height: 66,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                          vertical: 20,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '#3882128763678',
                              style: titleTextStyle,
                            ),
                            Spacer(),
                            Text(
                              'Kalbe Farma',
                              style: descTextStyle.copyWith(
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Spacer(),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              '15 Apr',
                              style: descTextStyle.copyWith(
                                fontSize: 12,
                              ),
                            ),
                            Spacer(),
                            Container(
                              height: 24,
                              width: 80,
                              decoration: BoxDecoration(
                                color: Color(0xffFFD124),
                                border: Border.all(
                                  color: Color(0xffFFD124),
                                  width: 1.0,
                                  style: BorderStyle.solid,
                                ),
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Center(
                                child: Text(
                                  'Processed',
                                  style: titleTextStyle.copyWith(
                                    fontWeight: FontWeight.w300,
                                    fontSize: 10,
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
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: semiEdge,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Container(
                height: 90,
                width: MediaQuery.of(context).size.width - (2 * edge),
                color: whiteColor,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 12,
                        vertical: 12,
                      ),
                      child: Image.asset(
                        'assets/transaction.png',
                        width: 66,
                        height: 66,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: 20,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '#3882128123456',
                            style: titleTextStyle,
                          ),
                          Spacer(),
                          Text(
                            'Sanbe Farma',
                            style: descTextStyle.copyWith(
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Spacer(),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            '10 Apr',
                            style: descTextStyle.copyWith(
                              fontSize: 12,
                            ),
                          ),
                          Spacer(),
                          Container(
                            height: 24,
                            width: 80,
                            decoration: BoxDecoration(
                              color: Color(0xff0093AB),
                              border: Border.all(
                                color: Color(0xff0093AB),
                                width: 1.0,
                                style: BorderStyle.solid,
                              ),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Center(
                              child: Text(
                                'Received',
                                style: titleTextStyle.copyWith(
                                  fontWeight: FontWeight.w300,
                                  fontSize: 10,
                                  color: whiteColor,
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
                  ],
                ),
              ),
            ),
            SizedBox(
              height: semiEdge,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Container(
                height: 90,
                width: MediaQuery.of(context).size.width - (2 * edge),
                color: whiteColor,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 12,
                        vertical: 12,
                      ),
                      child: Image.asset(
                        'assets/transaction.png',
                        width: 66,
                        height: 66,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: 20,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '#3882128666754',
                            style: titleTextStyle,
                          ),
                          Spacer(),
                          Text(
                            'Firma Narasa',
                            style: descTextStyle.copyWith(
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Spacer(),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            '5 Aprl',
                            style: descTextStyle.copyWith(
                              fontSize: 12,
                            ),
                          ),
                          Spacer(),
                          Container(
                            height: 24,
                            width: 80,
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
                                'Completed',
                                style: titleTextStyle.copyWith(
                                  fontWeight: FontWeight.w300,
                                  fontSize: 10,
                                  color: whiteColor,
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
                  ],
                ),
              ),
            ),
            SizedBox(
              height: semiEdge,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Container(
                height: 90,
                width: MediaQuery.of(context).size.width - (2 * edge),
                color: whiteColor,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 12,
                        vertical: 12,
                      ),
                      child: Image.asset(
                        'assets/transaction.png',
                        width: 66,
                        height: 66,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: 20,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '#3882128666754',
                            style: titleTextStyle,
                          ),
                          Spacer(),
                          Text(
                            'Firma Narasa',
                            style: descTextStyle.copyWith(
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Spacer(),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            '1 Apr',
                            style: descTextStyle.copyWith(
                              fontSize: 12,
                            ),
                          ),
                          Spacer(),
                          Container(
                            height: 24,
                            width: 80,
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
                                'Completed',
                                style: titleTextStyle.copyWith(
                                  fontWeight: FontWeight.w300,
                                  fontSize: 10,
                                  color: whiteColor,
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
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget printButton() {
    return Container(
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
    );
  }
}
