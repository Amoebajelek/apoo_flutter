import 'dart:async';
import 'package:apoo_flutter/pages/order/detail-transaction-processed-order.dart';
import 'package:flutter/material.dart';
import '../../theme.dart';

class LoadingOrderPage extends StatefulWidget {
  @override
  State<LoadingOrderPage> createState() => _LoadingOrderPageState();
}

class _LoadingOrderPageState extends State<LoadingOrderPage> {
  @override
  void initState() {
    super.initState();

    Timer(Duration(seconds: 5), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => DetailTransactionProcessedOrder(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/icon-loading.png',
              height: 15,
              width: 65,
            )
          ],
        ),
      ),
    );
  }
}
