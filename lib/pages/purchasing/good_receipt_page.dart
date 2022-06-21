import 'package:apoo_flutter/pages/purchasing/detail_purchasing_completed_page.dart';
import 'package:apoo_flutter/theme.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';

class GoodsReceiptPage extends StatefulWidget {
  @override
  State<GoodsReceiptPage> createState() => _GoodsReceiptPageState();
}

class _GoodsReceiptPageState extends State<GoodsReceiptPage> {
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
                  hintText: 'Unit',
                  hintStyle: descTextStyle,
                ),
                style: TextStyle(
                  color: isEmailValid ? Color(0xff2A2B3D) : Color(0xffFD4F56),
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
                  hintText: 'Unit',
                  hintStyle: descTextStyle,
                ),
                style: TextStyle(
                  color: isEmailValid ? Color(0xff2A2B3D) : Color(0xffFD4F56),
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
                  hintText: 'Unit',
                  hintStyle: descTextStyle,
                ),
                style: TextStyle(
                  color: isEmailValid ? Color(0xff2A2B3D) : Color(0xffFD4F56),
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
                  hintText: 'Unit',
                  hintStyle: descTextStyle,
                ),
                style: TextStyle(
                  color: isEmailValid ? Color(0xff2A2B3D) : Color(0xffFD4F56),
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
