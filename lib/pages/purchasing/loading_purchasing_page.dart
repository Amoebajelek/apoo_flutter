import 'dart:async';
import 'package:flutter/material.dart';
import '../../theme.dart';
import 'detail-transaction-processed-purchasing.dart';

class LoadingPurchasingPage extends StatefulWidget {
  static const routeName = '/loadingourchasingpage';

  @override
  State<LoadingPurchasingPage> createState() => _LoadingPurchasingPageState();
}

class _LoadingPurchasingPageState extends State<LoadingPurchasingPage> {
  @override
  void initState() {
    super.initState();

    Timer(Duration(seconds: 5), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => DetailTransactionPurchasingPage(),
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
