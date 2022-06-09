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
        height: 90,
        width: MediaQuery.of(context).size.width - (2 * edge),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 12,
                vertical: 12,
              ),
              child: Image.asset(
                product.imageUrl,
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
                    product.name,
                    style: titleTextStyle,
                  ),
                  Spacer(),
                  Text(
                    product.producent,
                    style: descTextStyle.copyWith(
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
            Spacer(),
            Padding(
              padding: EdgeInsets.only(
                right: 12,
              ),
              child: Text.rich(
                TextSpan(
                  text: 'Rp.',
                  style: descTextStyle.copyWith(
                    fontWeight: FontWeight.w700,
                    fontSize: 18,
                    color: greenColor,
                  ),
                  children: [
                    TextSpan(
                      text: product.price,
                      style: descTextStyle.copyWith(
                        fontWeight: FontWeight.w700,
                        fontSize: 18,
                        color: greenColor,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
