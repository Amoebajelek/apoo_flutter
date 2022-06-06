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
        height: 230,
        width: 148,
        color: Color(0xffF6F7F8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(
                right: 12,
                left: 12,
                bottom: 12,
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
              child: Text(
                product.price,
                style: titleTextStyle,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 12,
              ),
              child: Text.rich(
                TextSpan(text: 'stocks', children: [
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
      ),
    );
  }
}
