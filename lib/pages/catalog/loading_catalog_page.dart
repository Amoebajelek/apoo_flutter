import 'dart:async';
import 'package:apoo_flutter/pages/catalog/detail_transaction-processed-catalog.dart';
import 'package:flutter/material.dart';
import '../../theme.dart';

class LoadingCatalogPage extends StatefulWidget {
  @override
  State<LoadingCatalogPage> createState() => _LoadingCatalogPageState();
}

class _LoadingCatalogPageState extends State<LoadingCatalogPage> {
  @override
  void initState() {
    super.initState();

    Timer(Duration(seconds: 5), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => DetailTransactionProcessedCatalog(),
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
