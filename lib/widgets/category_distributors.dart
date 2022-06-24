import 'package:apoo_flutter/models/data_product.dart';
import 'package:apoo_flutter/theme.dart';
import 'package:flutter/material.dart';

import '../pages/base_page.dart';
import '../pages/purchasing/distributor_catalog_page.dart';

class CategoryDistributors extends StatelessWidget {
  final DataProduct product;

  CategoryDistributors(this.product);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (c) => DistributorCatalogPage(),
          ),
        );
      },
      child: Container(
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
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(
                  product.imageUrl,
                  width: 66,
                  height: 66,
                  fit: BoxFit.cover,
                ),
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
                    // 'Kalbe Farma',
                    product.name,
                    style: titleTextStyle,
                  ),
                  Spacer(),
                  Padding(
                    padding: EdgeInsets.only(
                      right: 12,
                    ),
                    child: Text.rich(
                      TextSpan(
                        // text: '293',
                        text: product.stocks,
                        style: descTextStyle.copyWith(
                          color: greenColor,
                        ),
                        children: [
                          TextSpan(
                            text: ' products',
                            style: descTextStyle.copyWith(
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
                'assets/ic-trash.png',
                color: Color(0xffC6D6EB),
                height: 22,
                width: 22,
              ),
            ),
            SizedBox(
              width: semiEdge,
            ),
          ],
        ),
      ),
    );
  }
}
