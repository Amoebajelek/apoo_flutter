import 'package:apoo_flutter/models/data_distributors.dart';
import 'package:apoo_flutter/theme.dart';
import 'package:flutter/material.dart';

class TopDistributor extends StatelessWidget {
  final DataDistributor distributor;

  TopDistributor(this.distributor);

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 110,
      width: 285,
      decoration: BoxDecoration(
        color: whiteColor,
        boxShadow: [
          BoxShadow(
            color: secondColor.withOpacity(0.05),
            spreadRadius: 3,
            blurRadius: 3,
            offset: Offset(5.0, 5.0),
          )
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(
              distributor.imageUrl,
              width: 124,
              height: 124,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            width: semiEdge,
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: semiEdge),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  distributor.name,
                  style: titleTextStyle,
                ),
                SizedBox(
                  height: 3,
                ),
                Row(
                  children: [
                    Image.asset(
                      'assets/ic-loc.png',
                      height: 15,
                      width: 11,
                    ),
                    SizedBox(
                      width: 6,
                    ),
                    Text(
                      distributor.location,
                      style: descTextStyle,
                    )
                  ],
                ),
                Spacer(),
                Text.rich(
                  TextSpan(
                    text: distributor.stocks,
                    style: descTextStyle.copyWith(
                      color: greenColor,
                    ),
                    children: [
                      TextSpan(
                        text: ' Products',
                        style: descTextStyle.copyWith(
                          color: greenColor,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
