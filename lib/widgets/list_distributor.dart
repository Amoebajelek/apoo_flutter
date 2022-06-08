import 'package:apoo_flutter/models/data_distributors.dart';
import 'package:apoo_flutter/theme.dart';
import 'package:flutter/material.dart';

class ListDistributor extends StatelessWidget {
  final DataDistributor distributor;

  ListDistributor(this.distributor);

  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(12),
      child: Container(
        height: 266,
        width: 148,
        decoration: BoxDecoration(
          color: Color(0xffFFFFFF),
          boxShadow: [
            BoxShadow(
              color: secondColor.withOpacity(0.5),
              spreadRadius: 3,
              blurRadius: 3,
              offset: Offset(5.0, 5.0),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(
                top: 8,
                right: 12,
                left: 12,
              ),
              child: Image.asset(
                distributor.imageUrl,
                height: 138,
                width: 138,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 12,
              ),
              child: Flexible(
                child: Text(
                  distributor.name,
                  style: titleTextStyle.copyWith(
                    color: greenColor,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 12,
              ),
              child: Text(
                distributor.location,
                style: descTextStyle.copyWith(
                  color: blackColor,
                ),
              ),
            ),
            Spacer(),
            Row(
              children: [
                Spacer(),
                Padding(
                  padding: EdgeInsets.only(
                    right: 12,
                    bottom: 12,
                  ),
                  child: Text.rich(
                    TextSpan(
                        text: distributor.stocks,
                        style: seeAllTextStyle.copyWith(
                          color: secondColor,
                          fontSize: 12,
                        ),
                        children: [
                          TextSpan(
                            text: ' Products',
                          ),
                        ]),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
