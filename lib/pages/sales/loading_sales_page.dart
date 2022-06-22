import 'dart:async';
import 'package:apoo_flutter/pages/sales/detail_transaction-processed-sales.dart';
import 'package:flutter/material.dart';
import '../../theme.dart';

class LoadingSalesPage extends StatefulWidget {
  @override
  State<LoadingSalesPage> createState() => _LoadingSalesPageState();
}

class _LoadingSalesPageState extends State<LoadingSalesPage> {
  @override
  void initState() {
    super.initState();

    Timer(Duration(seconds: 5), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => DetailTransactionProcessedSales(),
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
