import 'package:apoo_flutter/models/data_distributors.dart';
import 'package:apoo_flutter/theme.dart';
import 'package:flutter/material.dart';

class ListDistributor extends StatelessWidget {
  final DataDistributor distributor;

  ListDistributor(this.distributor);

  Widget build(BuildContext context) {
    return Container(
      height: 246,
      width: 156,
      decoration: BoxDecoration(
        color: Color(0xffFFFFFF),
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
          Row(
            children: [
              SizedBox(
                width: 12,
              ),
              Flexible(
                child: Text(
                  distributor.name,
                  style: titleTextStyle.copyWith(
                    color: greenColor,
                  ),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                ),
              ),
            ],
          ),
          Row(
            children: [
              SizedBox(
                width: 12,
              ),
              Text(
                distributor.location,
                style: descTextStyle.copyWith(
                  color: blackColor,
                ),
              ),
            ],
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
    );
  }
}
