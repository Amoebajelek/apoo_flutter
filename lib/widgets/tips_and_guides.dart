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
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(
              tipsandguides.imageUrl,
            ),
          ),
        ),
        height: 90,
        width: 315,
        alignment: Alignment.center,
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 12,
                  ),
                  child: Image.asset(
                    tipsandguides.imageUrl,
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
                        tipsandguides.title,
                        style: titleTextStyle,
                      ),
                      Spacer(),
                      Text(
                        tipsandguides.caption,
                        style: titleTextStyle,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Image.asset(
              'assets/ic-next.png',
            ),
          ],
        ),
      ),
    );
  }
}
