import 'package:apoo_flutter/models/data_product.dart';
import 'package:apoo_flutter/theme.dart';
import 'package:flutter/material.dart';

class DetailCatalog extends StatelessWidget {
  final DataProduct product;

  DetailCatalog(this.product);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Container(
              height: 190,
              width: MediaQuery.of(context).size.width - (2 * edge),
              decoration: BoxDecoration(
                color: blackColor,
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(
                    'assets/img-detail-catalog.png',
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: edge,
          ),
          Text(
            product.name,
            style: titleTextStyle.copyWith(
              fontSize: 22,
            ),
          ),
          SizedBox(
            height: semiEdge,
          ),
          Text.rich(
            TextSpan(
              text: 'Rp ',
              style: titleTextStyle.copyWith(
                color: greenColor,
              ),
              children: [
                TextSpan(
                  text: product.price,
                  style: titleTextStyle.copyWith(
                    fontSize: 24,
                    color: greenColor,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: semiEdge,
          ),
          units(),
          SizedBox(
            height: semiEdge,
          ),
          Row(
            children: [
              Text.rich(
                TextSpan(
                  text: 'stocks ',
                  style: descTextStyle,
                  children: [
                    TextSpan(
                      text: product.stocks,
                      children: [
                        TextSpan(
                          text: product.unit,
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Spacer(),
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
          SizedBox(
            height: edge,
          ),
          desc(),
        ],
      ),
    );
  }

  Widget desc() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Category :',
          style: descTextStyle,
        ),
        SizedBox(
          height: 6,
        ),
        Container(
          height: 35,
          width: 200,
          decoration: BoxDecoration(
            color: Color(0xffF97F45),
            border: Border.all(
              color: Color(0xffF97F45),
              width: 1.0,
              style: BorderStyle.solid,
            ),
            borderRadius: BorderRadius.circular(5),
          ),
          child: Center(
            child: Text(
              'Dibutuhkan resep dokter',
              style: titleTextStyle.copyWith(
                fontSize: 14,
                color: whiteColor,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
        SizedBox(
          height: semiEdge,
        ),
        Text(
          'Produsen :',
          style: descTextStyle,
        ),
        Text(
          product.producent,
          style: titleTextStyle,
        ),
        SizedBox(
          height: semiEdge,
        ),
        Text(
          'Ingredients :',
          style: descTextStyle,
        ),
        Text(
          'Paracetamol 500gr\nOrange Flavor 25gr',
          style: titleTextStyle,
        ),
        SizedBox(
          height: semiEdge,
        ),
        Text(
          'Benefites :',
          style: descTextStyle,
        ),
        Text(
          'Meringankan Nyeri',
          style: titleTextStyle,
        ),
        SizedBox(
          height: semiEdge,
        ),
        Text(
          'Expired Date :',
          style: descTextStyle,
        ),
        Text(
          '12082023',
          style: titleTextStyle,
        ),
        SizedBox(
          height: semiEdge,
        ),
        Text(
          'Tags :',
          style: descTextStyle,
        ),
        Row(
          children: [
            Container(
              height: 35,
              width: 120,
              decoration: BoxDecoration(
                color: whiteColor,
                border: Border.all(
                  color: greenColor,
                  width: 1.0,
                  style: BorderStyle.solid,
                ),
                borderRadius: BorderRadius.circular(5),
              ),
              child: Center(
                child: Text(
                  'Paracetamol',
                  style: titleTextStyle.copyWith(
                    fontSize: 14,
                    color: greenColor,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            SizedBox(
              width: semiEdge,
            ),
            Container(
              height: 35,
              width: 130,
              decoration: BoxDecoration(
                color: whiteColor,
                border: Border.all(
                  color: greenColor,
                  width: 1.0,
                  style: BorderStyle.solid,
                ),
                borderRadius: BorderRadius.circular(5),
              ),
              child: Center(
                child: Text(
                  'Orange Flavor',
                  style: titleTextStyle.copyWith(
                    fontSize: 14,
                    color: greenColor,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget units() {
    return Row(
      children: [
        Container(
          height: 35,
          width: 60,
          decoration: BoxDecoration(
            color: greenColor,
            border: Border.all(
              color: greenColor,
              width: 1.0,
              style: BorderStyle.solid,
            ),
            borderRadius: BorderRadius.circular(5),
          ),
          child: Center(
            child: Text(
              product.unit,
              style: titleTextStyle.copyWith(
                fontSize: 14,
                color: whiteColor,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
        SizedBox(
          width: 10,
        ),
        Container(
          height: 35,
          width: 60,
          decoration: BoxDecoration(
            color: whiteColor,
            border: Border.all(
              color: greenColor,
              width: 1.0,
              style: BorderStyle.solid,
            ),
            borderRadius: BorderRadius.circular(5),
          ),
          child: Center(
            child: Text(
              'Box',
              style: titleTextStyle.copyWith(
                fontSize: 14,
                color: greenColor,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ],
    );
  }
}
