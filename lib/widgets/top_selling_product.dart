import 'package:apoo_flutter/models/data_product.dart';
import 'package:apoo_flutter/theme.dart';
import 'package:flutter/material.dart';

class TopSellingProduct extends StatelessWidget {
  final DataProduct product;

  TopSellingProduct(this.product);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(12),
      child: Container(
        height: 112,
        width: 262,
        color: Color(0xffF6F7F8),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              product.imageUrl,
              width: 220,
              height: 200,
              fit: BoxFit.cover,
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
                    product.name,
                    style: titleTextStyle.copyWith(
                      color: greenColor,
                    ),
                  ),
                  Spacer(),
                  Text(
                    '241 Products',
                    style: descTextStyle,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
