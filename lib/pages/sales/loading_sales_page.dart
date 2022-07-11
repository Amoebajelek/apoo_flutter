import 'dart:async';
import 'package:flutter/material.dart';
import '../../theme.dart';

class LoadingSalesPage extends StatefulWidget {
  static const routeName = '/loadingsalespage';

  @override
  State<LoadingSalesPage> createState() => _LoadingSalesPageState();
}

class _LoadingSalesPageState extends State<LoadingSalesPage> {
  @override
  void initState() {
    super.initState();

    Timer(Duration(seconds: 1), () {
      Navigator.of(context).pushReplacementNamed('/detailtransactionsalespage');
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
