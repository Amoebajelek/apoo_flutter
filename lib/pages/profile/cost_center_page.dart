import 'package:apoo_flutter/theme.dart';
import 'package:flutter/material.dart';

class CostCenterPage extends StatefulWidget {
  @override
  State<CostCenterPage> createState() => _CostCenterPageState();
}

class _CostCenterPageState extends State<CostCenterPage> {
  bool isEmailValid = true;

  TextEditingController emailController = TextEditingController(text: '');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: edge,
          ),
          child: ListView(
            children: [
              SizedBox(
                height: semiEdge,
              ),
              header(),
              SizedBox(
                height: edge,
              ),
              tags(),
              SizedBox(
                height: semiEdge,
              ),
              list(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: 135,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: whiteColor,
          borderRadius: BorderRadius.circular(10),
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              height: 50,
              width: MediaQuery.of(context).size.width - (2 * edge),
              decoration: BoxDecoration(
                color: greenColor,
                border: Border.all(
                  color: greenColor,
                  width: 1.0,
                  style: BorderStyle.solid,
                ),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Center(
                child: Text(
                  'Add Cost Center',
                  style: titleTextStyle.copyWith(
                    fontSize: 18,
                    color: whiteColor,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

  Widget header() {
    return Container(
      child: Row(
        children: [
          InkWell(
            onTap: () {
              Navigator.pop(
                context,
              );
            },
            child: Image.asset(
              'assets/ic-back.png',
              height: edge,
              width: edge,
            ),
          ),
          Spacer(),
          Center(
            child: Text(
              'Cost Center',
              style: titleTextStyle.copyWith(
                fontSize: 18,
              ),
            ),
          ),
          Spacer(),
          Image.asset(
            'assets/icon-filter.png',
            height: edge,
            width: edge,
          )
        ],
      ),
    );
  }

  Widget tags() {
    return Padding(
      padding: EdgeInsets.only(
        top: semiEdge,
        bottom: semiEdge,
      ),
      child: Container(
        height: 33,
        width: MediaQuery.of(context).size.width - (2 * edge),
        child: ListView(
          scrollDirection: Axis.horizontal,
          reverse: true,
          children: [
            SizedBox(
              width: 3 * edge,
            ),
            Container(
              height: 30,
              width: 100,
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: blackColor,
                    width: 2.0,
                    style: BorderStyle.solid,
                  ),
                ),
              ),
              child: Center(
                child: Text(
                  'Jul \'22',
                  style: titleTextStyle.copyWith(
                    fontSize: 14,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            SizedBox(
              width: semiEdge,
            ),
            Container(
              height: 30,
              width: 100,
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: whiteColor,
                    width: 2.0,
                    style: BorderStyle.solid,
                  ),
                ),
              ),
              child: Center(
                child: Text(
                  'Jun \'22',
                  style: titleTextStyle.copyWith(
                    fontSize: 14,
                    color: thirdColor,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            SizedBox(
              width: semiEdge,
            ),
            Container(
              height: 30,
              width: 100,
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: whiteColor,
                    width: 2.0,
                    style: BorderStyle.solid,
                  ),
                ),
              ),
              child: Center(
                child: Text(
                  'Mei \'22',
                  style: titleTextStyle.copyWith(
                    fontSize: 14,
                    color: thirdColor,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            SizedBox(
              width: semiEdge,
            ),
            Container(
              height: 30,
              width: 100,
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: whiteColor,
                    width: 2.0,
                    style: BorderStyle.solid,
                  ),
                ),
              ),
              child: Center(
                child: Text(
                  'Apr \'22',
                  style: titleTextStyle.copyWith(
                    fontSize: 14,
                    color: thirdColor,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            SizedBox(
              width: semiEdge,
            ),
            Container(
              height: 30,
              width: 100,
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: whiteColor,
                    width: 2.0,
                    style: BorderStyle.solid,
                  ),
                ),
              ),
              child: Center(
                child: Text(
                  'Mar \'22',
                  style: titleTextStyle.copyWith(
                    fontSize: 14,
                    color: thirdColor,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            SizedBox(
              width: semiEdge,
            ),
            Container(
              height: 30,
              width: 100,
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: whiteColor,
                    width: 2.0,
                    style: BorderStyle.solid,
                  ),
                ),
              ),
              child: Center(
                child: Text(
                  'Feb \'22',
                  style: titleTextStyle.copyWith(
                    fontSize: 14,
                    color: thirdColor,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            SizedBox(
              width: semiEdge,
            ),
            Container(
              height: 30,
              width: 100,
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: whiteColor,
                    width: 2.0,
                    style: BorderStyle.solid,
                  ),
                ),
              ),
              child: Center(
                child: Text(
                  'Jan \'22',
                  style: titleTextStyle.copyWith(
                    fontSize: 14,
                    color: thirdColor,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget list() {
    return Column(
      children: [
        Container(
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
                    Text(
                      'Anggaran Operasional',
                      style: titleTextStyle,
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
                            fontSize: 16,
                            color: greenColor,
                          ),
                          children: [
                            TextSpan(
                              text: '5.000.000',
                              style: descTextStyle.copyWith(
                                fontWeight: FontWeight.w700,
                                fontSize: 16,
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
            ],
          ),
        ),
        SizedBox(
          height: semiEdge,
        ),
        Container(
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
                    Text(
                      'Pengadaan 2021',
                      style: titleTextStyle,
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
                            fontSize: 16,
                            color: greenColor,
                          ),
                          children: [
                            TextSpan(
                              text: '20.000.000',
                              style: descTextStyle.copyWith(
                                fontWeight: FontWeight.w700,
                                fontSize: 16,
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
            ],
          ),
        ),
      ],
    );
  }
}
