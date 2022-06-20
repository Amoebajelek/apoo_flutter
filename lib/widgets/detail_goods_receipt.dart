import 'package:apoo_flutter/models/data_detail_transaction.dart';
import 'package:apoo_flutter/theme.dart';
import 'package:flutter/material.dart';

class DetailGoodsReceipt extends StatelessWidget {
  final DataDetailTransaction transaction;

  DetailGoodsReceipt(this.transaction);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
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
            children: [
              Container(
                width: 150,
                // height: 100,
                child: Text(
                  transaction.product,
                  style: descTextStyle.copyWith(
                    fontWeight: FontWeight.w300,
                    fontSize: 14,
                    color: blackColor,
                    overflow: TextOverflow.ellipsis,
                  ),
                  maxLines: 3,
                ),
              ),
              Spacer(),
              Text(
                transaction.quantity,
                style: descTextStyle.copyWith(
                  fontWeight: FontWeight.w300,
                  fontSize: 14,
                  color: blackColor,
                ),
              ),
              Spacer(),
              Text(
                transaction.unit,
                style: descTextStyle.copyWith(
                  fontWeight: FontWeight.w300,
                  fontSize: 14,
                  color: blackColor,
                ),
              ),
              Spacer(),
              Text.rich(
                TextSpan(
                  text: 'Rp ',
                  style: descTextStyle.copyWith(
                    fontWeight: FontWeight.w300,
                    fontSize: 14,
                    color: greenColor,
                  ),
                  children: [
                    TextSpan(
                      text: transaction.price,
                      style: descTextStyle.copyWith(
                        fontWeight: FontWeight.w300,
                        fontSize: 14,
                        color: greenColor,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
          SizedBox(
            height: semiEdge,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '(PPN 10%)',
                style: descTextStyle.copyWith(
                  fontWeight: FontWeight.w300,
                  fontSize: 14,
                  color: blackColor,
                ),
              ),
              Text.rich(
                TextSpan(
                  text: 'Rp ',
                  style: descTextStyle.copyWith(
                    fontWeight: FontWeight.w300,
                    fontSize: 14,
                    color: greenColor,
                  ),
                  children: [
                    TextSpan(
                      text: '800',
                      style: descTextStyle.copyWith(
                        fontWeight: FontWeight.w300,
                        fontSize: 14,
                        color: greenColor,
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
                      text: '8.800',
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
          SizedBox(
            height: semiEdge,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Payment',
                style: descTextStyle.copyWith(
                  fontWeight: FontWeight.w800,
                  fontSize: 14,
                  color: blackColor,
                ),
              ),
              Text(
                transaction.payment,
                style: descTextStyle.copyWith(
                  fontWeight: FontWeight.w800,
                  fontSize: 14,
                  color: greenColor,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
