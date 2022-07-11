import 'package:apoo_flutter/theme.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';

import 'detail_purchasing_completed_page.dart';

class GoodsReceiptPage extends StatefulWidget {
  static const routeName = '/goodsreceiptpage';

  @override
  State<GoodsReceiptPage> createState() => _GoodsReceiptPageState();
}

class _GoodsReceiptPageState extends State<GoodsReceiptPage> {
  bool isEmailValid = true;

  TextEditingController emailController = TextEditingController(text: '');

  List items = ['Strip', 'Box', 'Bottle'];
  var selectedItem = 'Strip';

  List unItem1 = ['Strip', 'Box', 'Bottle'];
  var unSelectedItem1 = 'Strip';

  List unItem2 = ['Strip', 'Box', 'Bottle'];
  var unSelectedItem2 = 'Strip';

  List unItem3 = ['Strip', 'Box', 'Bottle'];
  var unSelectedItem3 = 'Strip';

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
              summaryOrder(),
              SizedBox(
                height: semiEdge,
              ),
              goodsReceipt(),
              SizedBox(
                height: semiEdge,
              ),
              returnUnexpectedItems(),
              SizedBox(
                height: edge,
              ),
              Container(
                height: 50,
                width: MediaQuery.of(context).size.width - (2 * edge),
                child: RaisedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailPurchasingCompletedPage(),
                      ),
                    );
                  },
                  color: greenColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Row(
                    children: [
                      Spacer(),
                      Text(
                        'Completed',
                        style: buttonTextStyle,
                      ),
                      Spacer(),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: semiEdge,
              ),
            ],
          ),
        ),
      ),
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
              height: 30,
              width: 30,
            ),
          ),
          Spacer(),
          Center(
            child: Text(
              'Goods Receipt',
              style: titleTextStyle.copyWith(
                fontSize: 18,
              ),
            ),
          ),
          Spacer(),
          Container(
            height: 30,
            width: 30,
          ),
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
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              child: Expanded(
                child: Text(
                  'Bodrexin Medical Center 15 gr 10 Tablet 1 Strip',
                  style: descTextStyle.copyWith(
                    fontWeight: FontWeight.w300,
                    fontSize: 14,
                    color: blackColor,
                  ),
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ),
            SizedBox(
              width: semiEdge,
            ),
            Container(
              width: 80,
              child: Text(
                'Strips',
              ),
            ),
            SizedBox(
              width: semiEdge,
            ),
            Container(
              width: 80,
              child: Text(
                '3',
              ),
            ),
          ],
        ),
        SizedBox(
          height: semiEdge,
        ),
        SizedBox(
          height: semiEdge,
        ),
        Divider(
          color: secondColor,
        ),
      ],
    );
  }

  Widget goodsReceipt() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Goods Receipt',
          style: titleTextStyle,
        ),
        SizedBox(
          height: semiEdge,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              child: Expanded(
                child: Text(
                  'Bodrexin Medical Center 15 gr 10 Tablet 1 Strip',
                  style: descTextStyle.copyWith(
                    fontWeight: FontWeight.w300,
                    fontSize: 14,
                    color: blackColor,
                  ),
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ),
            SizedBox(
              width: semiEdge,
            ),
            Container(
              width: 80,
              child: DropdownButtonHideUnderline(
                child: DropdownButton(
                  value: selectedItem,
                  items: items
                      .map(
                        (item) => DropdownMenuItem(
                          value: item,
                          child: Text(
                            item,
                            style: descTextStyle,
                          ),
                        ),
                      )
                      .toList(),
                  onChanged: (item) => setState(() => selectedItem = item),
                ),
              ),
            ),
            // Container(
            //   width: 80,
            //   child: TextFormField(
            //     controller: emailController,
            //     onChanged: (value) {
            //       print(value);
            //       bool isValid = EmailValidator.validate(value);
            //       print(isValid);
            //       if (isValid) {
            //         setState(() {
            //           isEmailValid = true;
            //         });
            //       } else {
            //         setState(() {
            //           isEmailValid = false;
            //         });
            //       }
            //     },
            //     decoration: InputDecoration(
            //       hintText: 'Unit',
            //       hintStyle: descTextStyle,
            //     ),
            //     style: TextStyle(
            //       color: isEmailValid ? Color(0xff2A2B3D) : Color(0xffFD4F56),
            //     ),
            //   ),
            // ),
            SizedBox(
              width: semiEdge,
            ),
            Container(
              width: 80,
              child: TextFormField(
                controller: emailController,
                onChanged: (value) {
                  print(value);
                  bool isValid = EmailValidator.validate(value);
                  print(isValid);
                  if (isValid) {
                    setState(() {
                      isEmailValid = true;
                    });
                  } else {
                    setState(() {
                      isEmailValid = false;
                    });
                  }
                },
                decoration: InputDecoration(
                  hintText: 'Quantity',
                  hintStyle: descTextStyle,
                ),
                style: TextStyle(
                  color: isEmailValid ? Color(0xff2A2B3D) : Color(0xffFD4F56),
                ),
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
      ],
    );
  }

  Widget returnUnexpectedItems() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Return Enecpected Items',
          style: titleTextStyle,
        ),
        SizedBox(
          height: semiEdge,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              child: Expanded(
                child: TextFormField(
                  controller: emailController,
                  onChanged: (value) {
                    print(value);
                    bool isValid = EmailValidator.validate(value);
                    print(isValid);
                    if (isValid) {
                      setState(() {
                        isEmailValid = true;
                      });
                    } else {
                      setState(() {
                        isEmailValid = false;
                      });
                    }
                  },
                  decoration: InputDecoration(
                    hintText: 'Product Name',
                    hintStyle: descTextStyle,
                  ),
                  style: TextStyle(
                    color: isEmailValid ? Color(0xff2A2B3D) : Color(0xffFD4F56),
                  ),
                ),
              ),
            ),
            SizedBox(
              width: semiEdge,
            ),
            Container(
              width: 80,
              child: DropdownButtonHideUnderline(
                child: DropdownButton(
                  value: unSelectedItem1,
                  items: unItem1
                      .map(
                        (unItem1) => DropdownMenuItem(
                          value: unItem1,
                          child: Text(
                            unItem1,
                            style: descTextStyle,
                          ),
                        ),
                      )
                      .toList(),
                  onChanged: (unItem1) =>
                      setState(() => unSelectedItem1 = unItem1),
                ),
              ),
            ),
            SizedBox(
              width: semiEdge,
            ),
            Container(
              width: 80,
              child: TextFormField(
                controller: emailController,
                onChanged: (value) {
                  print(value);
                  bool isValid = EmailValidator.validate(value);
                  print(isValid);
                  if (isValid) {
                    setState(() {
                      isEmailValid = true;
                    });
                  } else {
                    setState(() {
                      isEmailValid = false;
                    });
                  }
                },
                decoration: InputDecoration(
                  hintText: 'Quantity',
                  hintStyle: descTextStyle,
                ),
                style: TextStyle(
                  color: isEmailValid ? Color(0xff2A2B3D) : Color(0xffFD4F56),
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: semiEdge,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              child: Expanded(
                child: TextFormField(
                  controller: emailController,
                  onChanged: (value) {
                    print(value);
                    bool isValid = EmailValidator.validate(value);
                    print(isValid);
                    if (isValid) {
                      setState(() {
                        isEmailValid = true;
                      });
                    } else {
                      setState(() {
                        isEmailValid = false;
                      });
                    }
                  },
                  decoration: InputDecoration(
                    hintText: 'Product Name',
                    hintStyle: descTextStyle,
                  ),
                  style: TextStyle(
                    color: isEmailValid ? Color(0xff2A2B3D) : Color(0xffFD4F56),
                  ),
                ),
              ),
            ),
            SizedBox(
              width: semiEdge,
            ),
            Container(
              width: 80,
              child: DropdownButtonHideUnderline(
                child: DropdownButton(
                  value: unSelectedItem2,
                  items: unItem2
                      .map(
                        (unItem2) => DropdownMenuItem(
                          value: unItem2,
                          child: Text(
                            unItem2,
                            style: descTextStyle,
                          ),
                        ),
                      )
                      .toList(),
                  onChanged: (unItem2) =>
                      setState(() => unSelectedItem2 = unItem2),
                ),
              ),
            ),
            SizedBox(
              width: semiEdge,
            ),
            Container(
              width: 80,
              child: TextFormField(
                controller: emailController,
                onChanged: (value) {
                  print(value);
                  bool isValid = EmailValidator.validate(value);
                  print(isValid);
                  if (isValid) {
                    setState(() {
                      isEmailValid = true;
                    });
                  } else {
                    setState(() {
                      isEmailValid = false;
                    });
                  }
                },
                decoration: InputDecoration(
                  hintText: 'Quantity',
                  hintStyle: descTextStyle,
                ),
                style: TextStyle(
                  color: isEmailValid ? Color(0xff2A2B3D) : Color(0xffFD4F56),
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: semiEdge,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              child: Expanded(
                child: TextFormField(
                  controller: emailController,
                  onChanged: (value) {
                    print(value);
                    bool isValid = EmailValidator.validate(value);
                    print(isValid);
                    if (isValid) {
                      setState(() {
                        isEmailValid = true;
                      });
                    } else {
                      setState(() {
                        isEmailValid = false;
                      });
                    }
                  },
                  decoration: InputDecoration(
                    hintText: 'Product Name',
                    hintStyle: descTextStyle,
                  ),
                  style: TextStyle(
                    color: isEmailValid ? Color(0xff2A2B3D) : Color(0xffFD4F56),
                  ),
                ),
              ),
            ),
            SizedBox(
              width: semiEdge,
            ),
            Container(
              width: 80,
              child: DropdownButtonHideUnderline(
                child: DropdownButton(
                  value: unSelectedItem3,
                  items: unItem3
                      .map(
                        (unItem3) => DropdownMenuItem(
                          value: unItem3,
                          child: Text(
                            unItem3,
                            style: descTextStyle,
                          ),
                        ),
                      )
                      .toList(),
                  onChanged: (unItem3) =>
                      setState(() => unSelectedItem3 = unItem3),
                ),
              ),
            ),
            SizedBox(
              width: semiEdge,
            ),
            Container(
              width: 80,
              child: TextFormField(
                controller: emailController,
                onChanged: (value) {
                  print(value);
                  bool isValid = EmailValidator.validate(value);
                  print(isValid);
                  if (isValid) {
                    setState(() {
                      isEmailValid = true;
                    });
                  } else {
                    setState(() {
                      isEmailValid = false;
                    });
                  }
                },
                decoration: InputDecoration(
                  hintText: 'Quantity',
                  hintStyle: descTextStyle,
                ),
                style: TextStyle(
                  color: isEmailValid ? Color(0xff2A2B3D) : Color(0xffFD4F56),
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: semiEdge,
        ),
      ],
    );
  }
}
