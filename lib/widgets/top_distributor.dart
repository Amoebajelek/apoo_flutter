import 'package:apoo_flutter/models/data_distributors.dart';
import 'package:apoo_flutter/theme.dart';
import 'package:flutter/material.dart';

class TopDistributor extends StatelessWidget {
  final DataDistributor distributor;

  TopDistributor(this.distributor);

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
              distributor.imageUrl,
              width: 104,
              height: 104,
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
                    distributor.name,
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
