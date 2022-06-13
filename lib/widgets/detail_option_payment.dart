import 'package:apoo_flutter/models/data_option_payment.dart';
import 'package:apoo_flutter/theme.dart';
import 'package:flutter/material.dart';

class DetailOptionPayment extends StatelessWidget {
  final DataOptionPayment payment;

  DetailOptionPayment(this.payment);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: whiteColor,
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
      height: 90,
      width: 315,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.all(20),
            child: Image.asset(
              'assets/icon-payment.png',
              height: 40,
              width: 40,
            ),
          ),
          SizedBox(
            width: semiEdge,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Spacer(),
              Text(
                payment.title,
                style: titleTextStyle,
              ),
              Text(
                payment.caption,
                style: descTextStyle,
              ),
              Spacer(),
            ],
          )
        ],
      ),
    );
  }
}
