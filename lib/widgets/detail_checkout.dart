import 'package:apoo_flutter/models/data_product.dart';
import 'package:apoo_flutter/theme.dart';
import 'package:flutter/material.dart';

class DetailCheckout extends StatelessWidget {
  final DataProduct product;

  DetailCheckout(this.product);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 120,
            width: MediaQuery.of(context).size.width - (2 * edge),
            decoration: BoxDecoration(
              color: whiteColor,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.shade200,
                  blurRadius: 10.0,
                  spreadRadius: 0.2,
                  offset: Offset(
                    0.5,
                    0.5,
                  ),
                ),
              ],
              borderRadius: BorderRadius.circular(12),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: semiEdge,
                    horizontal: semiEdge,
                  ),
                  child: Image.asset(
                    'assets/prod1.png',
                    height: 90,
                    width: 90,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: semiEdge,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 200,
                        child: Text(
                          product.name,
                          style: titleTextStyle,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      Text.rich(
                        TextSpan(
                          text: 'Rp ',
                          style: titleTextStyle.copyWith(
                            color: greenColor,
                            fontSize: 16,
                          ),
                          children: [
                            TextSpan(
                              text: product.price,
                              style: titleTextStyle.copyWith(
                                color: greenColor,
                              ),
                              children: [
                                TextSpan(
                                  text: ' /',
                                  style: descTextStyle,
                                  children: [
                                    TextSpan(
                                      text: product.unit,
                                      style: descTextStyle,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Spacer(),
                      Row(
                        children: [
                          Image.asset(
                            'assets/icon-minus.png',
                            height: 25,
                            width: 25,
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: 10,
                            ),
                            child: Text(
                              '1',
                              style: titleTextStyle,
                            ),
                          ),
                          Image.asset(
                            'assets/icon-plus.png',
                            height: 25,
                            width: 25,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: edge,
          ),
          summaryOrder(),
          location(),
        ],
      ),
    );
  }

  Widget summaryOrder() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Summary Order',
          style: titleTextStyle,
        ),
        SizedBox(
          height: semiEdge,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: 120,
              child: Text(
                product.name,
                style: descTextStyle.copyWith(
                  fontSize: 14,
                  color: blackColor,
                ),
                overflow: TextOverflow.ellipsis,
                maxLines: 3,
              ),
            ),
            Text(
              '1',
              style: descTextStyle.copyWith(
                fontSize: 14,
                color: blackColor,
              ),
            ),
            Text(
              product.unit,
              style: descTextStyle.copyWith(
                fontSize: 14,
                color: blackColor,
              ),
            ),
            Text.rich(
              TextSpan(
                text: 'Rp ',
                style: titleTextStyle.copyWith(
                  color: greenColor,
                  fontSize: 14,
                ),
                children: [
                  TextSpan(
                    text: product.price,
                    style: titleTextStyle.copyWith(
                      color: greenColor,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        SizedBox(
          height: semiEdge,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: 120,
              child: Text(
                '(PPN 10%)',
                style: titleTextStyle.copyWith(
                  fontSize: 14,
                ),
                overflow: TextOverflow.ellipsis,
                maxLines: 3,
              ),
            ),
            Text.rich(
              TextSpan(
                text: 'Rp ',
                style: titleTextStyle.copyWith(
                  color: greenColor,
                  fontSize: 14,
                ),
                children: [
                  TextSpan(
                    text: '680',
                    style: titleTextStyle.copyWith(
                      color: greenColor,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        SizedBox(
          height: semiEdge,
        ),
        Divider(
          color: secondColor,
        ),
        SizedBox(
          height: semiEdge,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Subtotal',
              style: descTextStyle.copyWith(
                fontWeight: FontWeight.w800,
                fontSize: 14,
                color: blackColor,
              ),
            ),
            Text.rich(
              TextSpan(
                text: 'Rp ',
                style: descTextStyle.copyWith(
                  fontWeight: FontWeight.w800,
                  fontSize: 18,
                  color: greenColor,
                ),
                children: [
                  TextSpan(
                    text: '7.180',
                    style: descTextStyle.copyWith(
                      fontWeight: FontWeight.w800,
                      fontSize: 18,
                      color: greenColor,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget location() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: edge,
        ),
        Text(
          'Summary Order',
          style: titleTextStyle,
        ),
        SizedBox(
          height: semiEdge,
        ),
        Row(
          children: [
            Image.asset(
              'assets/icon-location.png',
              height: 50,
              width: 50,
            ),
            SizedBox(
              width: semiEdge,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Shop Location',
                  style: descTextStyle,
                ),
                Text(
                  'Permata Medical Bandung',
                  style: titleTextStyle,
                )
              ],
            ),
          ],
        ),
      ],
    );
  }
}
