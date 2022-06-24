import 'package:flutter/material.dart';

import '../models/data_cost_center.dart';
import '../theme.dart';

class ListCostCenter extends StatelessWidget {
  final DataCostCenter costCenter;

  ListCostCenter(this.costCenter);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      width: MediaQuery.of(context).size.width - (2 * edge),
      decoration: BoxDecoration(
        color: whiteColor,
        borderRadius: BorderRadius.circular(12),
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
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 12,
              vertical: 12,
            ),
            child: Image.asset(
              'assets/costcenter.png',
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
                Container(
                  width: MediaQuery.of(context).size.width - 8 * edge,
                  child: Text(
                    costCenter.title,
                    style: titleTextStyle,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                  ),
                ),
                Spacer(),
                Container(
                  width: MediaQuery.of(context).size.width - 8 * edge,
                  child: Text(
                    costCenter.caption,
                    style: descTextStyle,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          Image.asset(
            'assets/ic-handbook.png',
            height: 25,
            width: 25,
            color: Color(0xffC6D6EB),
          ),
          SizedBox(
            width: semiEdge,
          ),
          Image.asset(
            'assets/ic-trash.png',
            height: 25,
            width: 25,
          ),
          SizedBox(
            width: 12,
          ),
        ],
      ),
    );
  }
}
