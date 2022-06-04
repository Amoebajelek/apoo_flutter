import 'package:apoo_flutter/models/data_product.dart';
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
        color: Color(0xffF6F7F8),
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
                  // Container(
                  //   height: 25,
                  //   child: RaisedButton(
                  //     color: Color(0xffFFD124),
                  //     shape: RoundedRectangleBorder(
                  //       borderRadius: BorderRadius.circular(12),
                  //     ),
                  //     child: Text(
                  //       'Credit Card',
                  //       style: buttonTextStyle.copyWith(
                  //         fontSize: 12,
                  //       ),
                  //     ),
                  //   ),
                  // ),
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
