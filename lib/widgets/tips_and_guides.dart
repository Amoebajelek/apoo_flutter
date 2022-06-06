import 'package:apoo_flutter/models/data_product.dart';
import 'package:apoo_flutter/models/data_tipsAndGuides.dart';
import 'package:apoo_flutter/theme.dart';
import 'package:flutter/material.dart';

class TipsandGuides extends StatelessWidget {
  final DataTipsandGuides tipsandguides;

  TipsandGuides(this.tipsandguides);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(12),
      child: Container(
        decoration: BoxDecoration(
          color: blackColor,
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(
              tipsandguides.imageUrl,
            ),
          ),
        ),
        height: 90,
        width: 315,
        // alignment: Alignment.center,
        child: Row(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                vertical: 20,
                horizontal: 20,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    tipsandguides.title,
                    style: titleTextStyle.copyWith(
                      color: whiteColor,
                    ),
                  ),
                  Text(
                    tipsandguides.caption,
                    style: descTextStyle.copyWith(
                      fontSize: 12,
                      color: whiteColor,
                    ),
                  ),
                ],
              ),
            ),
            Spacer(),
            Padding(
              padding: EdgeInsets.only(right: 20),
              child: Image.asset(
                'assets/ic-next.png',
                height: 40,
                width: 40,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
