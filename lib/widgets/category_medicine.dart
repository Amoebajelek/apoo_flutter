import 'package:apoo_flutter/models/data_product.dart';
import 'package:apoo_flutter/theme.dart';
import 'package:flutter/material.dart';

import '../pages/base_page.dart';

class CategoryMedicine extends StatelessWidget {
  final DataProduct product;

  CategoryMedicine(this.product);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: MediaQuery.of(context).size.width - 2 * edge,
      decoration: BoxDecoration(
        color: whiteColor,
        border: Border.all(
          width: 1.0,
          color: thirdColor.withOpacity(0.3),
        ),
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
      child: Padding(
        padding: EdgeInsets.symmetric(
          vertical: semiEdge,
          horizontal: semiEdge,
        ),
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Spacer(),
                Container(
                  width: 150,
                  child: Text(
                    product.name,
                    style: titleTextStyle,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                Text(
                  product.producent,
                  style: descTextStyle,
                ),
                Spacer(),
              ],
            ),
            Spacer(),
            InkWell(
              onTap: () {
                showDialog(
                  context: context,
                  builder: (c) => AlertDialog(
                    content: Text(
                      'Are you sure?',
                      style: titleTextStyle.copyWith(
                        fontSize: 14,
                      ),
                    ),
                    actions: [
                      TextButton(
                        onPressed: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (c) => BasePage(),
                          ),
                        ),
                        child: Text(
                          'Yes',
                          style: descTextStyle.copyWith(
                            color: greenColor,
                          ),
                        ),
                      ),
                      TextButton(
                        onPressed: () => Navigator.pop(context),
                        child: Text(
                          'No',
                          style: descTextStyle.copyWith(
                            color: greenColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
              child: Image.asset(
                'assets/ic-handbook.png',
                color: Color(0xffC6D6EB),
                height: 25,
                width: 25,
              ),
            ),
            SizedBox(
              width: semiEdge,
            ),
            InkWell(
              onTap: () {
                showDialog(
                  context: context,
                  builder: (c) => AlertDialog(
                    content: Text(
                      'Are you sure?',
                      style: titleTextStyle.copyWith(
                        fontSize: 14,
                      ),
                    ),
                    actions: [
                      TextButton(
                        onPressed: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (c) => BasePage(),
                          ),
                        ),
                        child: Text(
                          'Yes',
                          style: descTextStyle.copyWith(
                            color: greenColor,
                          ),
                        ),
                      ),
                      TextButton(
                        onPressed: () => Navigator.pop(context),
                        child: Text(
                          'No',
                          style: descTextStyle.copyWith(
                            color: greenColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
              child: Image.asset(
                'assets/ic-trash.png',
                height: 25,
                width: 25,
              ),
            ),
            SizedBox(
              width: semiEdge,
            ),
            InkWell(
              onTap: () {
                showDialog(
                  context: context,
                  builder: (c) => AlertDialog(
                    content: Text(
                      'Are you sure?',
                      style: titleTextStyle.copyWith(
                        fontSize: 14,
                      ),
                    ),
                    actions: [
                      TextButton(
                        onPressed: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (c) => BasePage(),
                          ),
                        ),
                        child: Text(
                          'Yes',
                          style: descTextStyle.copyWith(
                            color: greenColor,
                          ),
                        ),
                      ),
                      TextButton(
                        onPressed: () => Navigator.pop(context),
                        child: Text(
                          'No',
                          style: descTextStyle.copyWith(
                            color: greenColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
              child: Image.asset(
                'assets/ic-delete.png',
                height: 25,
                width: 25,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
