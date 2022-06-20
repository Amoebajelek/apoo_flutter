import 'package:apoo_flutter/pages/order/distributor_catalog_page.dart';
import 'package:email_validator/email_validator.dart';
import 'package:apoo_flutter/theme.dart';
import 'package:flutter/material.dart';

class AddCatalogProduct extends StatefulWidget {
  @override
  State<AddCatalogProduct> createState() => _AddCatalogProductState();
}

class _AddCatalogProductState extends State<AddCatalogProduct> {
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
              image(),
              SizedBox(
                height: edge,
              ),
              producent(),
              SizedBox(
                height: semiEdge,
              ),
              product(),
              SizedBox(
                height: semiEdge,
              ),
              category(),
              SizedBox(
                height: semiEdge,
              ),
              price(),
              SizedBox(
                height: semiEdge,
              ),
              stocks(),
              SizedBox(
                height: semiEdge,
              ),
              unit(),
              SizedBox(
                height: semiEdge,
              ),
              ingredients(),
              SizedBox(
                height: semiEdge,
              ),
              benefites(),
              SizedBox(
                height: semiEdge,
              ),
              expiredDate(),
              SizedBox(
                height: semiEdge,
              ),
              tags(),
              SizedBox(
                height: semiEdge,
              ),
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
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DistributorCatalogPage(),
                  ),
                );
              },
              child: Container(
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
                    'Save',
                    style: titleTextStyle.copyWith(
                      fontSize: 18,
                      color: whiteColor,
                    ),
                    textAlign: TextAlign.center,
                  ),
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
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DistributorCatalogPage(),
                ),
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
              'Add Catalog Product',
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

  Widget image() {
    return Container(
      height: 190,
      width: MediaQuery.of(context).size.width - (2 * edge),
      decoration: BoxDecoration(
        color: whiteColor,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: thirdColor,
          width: 1.0,
          style: BorderStyle.solid,
        ),
      ),
      child: Center(
        child: Image.asset(
          'assets/icon-add-product.png',
          height: 30,
          width: 30,
        ),
      ),
    );
  }

  Widget producent() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Producent Name',
          style: descTextStyle.copyWith(
            color: greenColor,
          ),
        ),
        TextFormField(
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
            hintText: 'PT Biofarma Firma',
            hintStyle: descTextStyle,
          ),
          style: TextStyle(
            color: isEmailValid ? Color(0xff2A2B3D) : Color(0xffFD4F56),
          ),
        ),
      ],
    );
  }

  Widget product() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Product Name',
          style: descTextStyle.copyWith(
            color: greenColor,
          ),
        ),
        TextFormField(
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
            hintText: 'Paracetamol',
            hintStyle: descTextStyle,
          ),
          style: TextStyle(
            color: isEmailValid ? Color(0xff2A2B3D) : Color(0xffFD4F56),
          ),
        ),
      ],
    );
  }

  Widget category() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Category',
          style: descTextStyle.copyWith(
            color: greenColor,
          ),
        ),
        TextFormField(
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
            hintText: 'Obat Bebas',
            hintStyle: descTextStyle,
          ),
          style: TextStyle(
            color: isEmailValid ? Color(0xff2A2B3D) : Color(0xffFD4F56),
          ),
        ),
      ],
    );
  }

  Widget price() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'price',
          style: descTextStyle.copyWith(
            color: greenColor,
          ),
        ),
        TextFormField(
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
            hintText: '5000',
            hintStyle: descTextStyle,
          ),
          style: TextStyle(
            color: isEmailValid ? Color(0xff2A2B3D) : Color(0xffFD4F56),
          ),
        ),
      ],
    );
  }

  Widget stocks() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Stocks',
          style: descTextStyle.copyWith(
            color: greenColor,
          ),
        ),
        TextFormField(
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
            hintText: '71',
            hintStyle: descTextStyle,
          ),
          style: TextStyle(
            color: isEmailValid ? Color(0xff2A2B3D) : Color(0xffFD4F56),
          ),
        ),
      ],
    );
  }

  Widget unit() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Unit',
          style: descTextStyle.copyWith(
            color: greenColor,
          ),
        ),
        TextFormField(
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
            hintText: 'Strip',
            hintStyle: descTextStyle,
          ),
          style: TextStyle(
            color: isEmailValid ? Color(0xff2A2B3D) : Color(0xffFD4F56),
          ),
        ),
      ],
    );
  }

  Widget ingredients() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Ingredients',
          style: descTextStyle.copyWith(
            color: greenColor,
          ),
        ),
        TextFormField(
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
            hintText: 'Paracetamol 500gr\nOrange Flavor 25gr',
            hintStyle: descTextStyle,
            hintMaxLines: 5,
          ),
          style: TextStyle(
            color: isEmailValid ? Color(0xff2A2B3D) : Color(0xffFD4F56),
          ),
        ),
      ],
    );
  }

  Widget benefites() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Benefites',
          style: descTextStyle.copyWith(
            color: greenColor,
          ),
        ),
        TextFormField(
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
            hintText: 'Meringankan nyeri',
            hintStyle: descTextStyle,
            hintMaxLines: 5,
          ),
          style: TextStyle(
            color: isEmailValid ? Color(0xff2A2B3D) : Color(0xffFD4F56),
          ),
        ),
      ],
    );
  }

  Widget expiredDate() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Expired Date',
          style: descTextStyle.copyWith(
            color: greenColor,
          ),
        ),
        TextFormField(
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
            hintText: '12082023',
            hintStyle: descTextStyle,
          ),
          style: TextStyle(
            color: isEmailValid ? Color(0xff2A2B3D) : Color(0xffFD4F56),
          ),
        ),
      ],
    );
  }

  Widget tags() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Tags',
          style: descTextStyle.copyWith(
            color: greenColor,
          ),
        ),
        TextFormField(
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
            hintText: 'Paracetamol',
            hintStyle: descTextStyle,
          ),
          style: TextStyle(
            color: isEmailValid ? Color(0xff2A2B3D) : Color(0xffFD4F56),
          ),
        ),
      ],
    );
  }
}
