import 'package:apoo_flutter/models/data_lastTransactions.dart';
import 'package:apoo_flutter/theme.dart';
import 'package:flutter/material.dart';

class LastTransactions extends StatelessWidget {
  final DataTransactions transaction;

  LastTransactions(this.transaction);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(12),
      child: Container(
        height: 90,
        width: 315,
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
                    transaction.code,
                    style: titleTextStyle,
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
                        'Credit Card',
                        style: titleTextStyle.copyWith(
                          fontWeight: FontWeight.w300,
                          fontSize: 10,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Spacer(),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 20),
              child: Column(
                children: [
                  Text(
                    transaction.time,
                    style: descTextStyle.copyWith(
                      fontSize: 12,
                    ),
                  ),
                  Spacer(),
                  Text.rich(
                    TextSpan(
                      text: 'Rp.',
                      style: descTextStyle.copyWith(
                        fontWeight: FontWeight.w700,
                        fontSize: 14,
                        color: greenColor,
                      ),
                      children: [
                        TextSpan(
                          text: transaction.price,
                          style: descTextStyle.copyWith(
                            fontWeight: FontWeight.w700,
                            fontSize: 14,
                            color: greenColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 12,
            ),
          ],
        ),
      ),
    );
  }
}
