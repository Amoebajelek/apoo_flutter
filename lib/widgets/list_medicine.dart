import 'package:apoo_flutter/models/data_product.dart';
import 'package:apoo_flutter/theme.dart';
import 'package:flutter/material.dart';

class ListMedicine extends StatelessWidget {
  final DataProduct product;

  ListMedicine(this.product);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 266,
      width: 148,
      decoration: BoxDecoration(
        color: Color(0xffFFFFFF),
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: secondColor.withOpacity(0.1),
            spreadRadius: 1,
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
            child: Text(
              product.producent,
              style: descTextStyle,
            ),
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 12,
              vertical: 12,
            ),
            child: Text(
              product.category,
              style: descTextStyle.copyWith(
                color: greenColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
