import 'package:apoo_flutter/models/data_product.dart';
import 'package:apoo_flutter/theme.dart';
import 'package:flutter/material.dart';

class TopProduct extends StatelessWidget {
  final DataProduct product;

  TopProduct(this.product);

  @override
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
                product.imageUrl,
                height: 138,
                width: 138,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 12,
              ),
              child: Text(
                product.name,
                style: titleTextStyle,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 12,
              ),
              child: Text.rich(
                TextSpan(
                    text: 'Rp ',
                    style: titleTextStyle.copyWith(
                      fontSize: 14,
                      color: greenColor,
                    ),
                    children: [
                      TextSpan(
                        text: product.price,
                        style: titleTextStyle.copyWith(
                          fontSize: 18,
                          color: greenColor,
                        ),
                      ),
                    ]),
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
                        text: 'stocks ',
                        style: seeAllTextStyle.copyWith(
                          color: secondColor,
                          fontSize: 12,
                        ),
                        children: [
                          TextSpan(text: product.stocks, children: [
                            TextSpan(
                              text: product.unit,
                            )
                          ]),
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
