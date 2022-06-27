import 'package:apoo_flutter/theme.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';

class EditMedicinePage extends StatefulWidget {
  @override
  State<EditMedicinePage> createState() => _EditMedicinePageState();
}

class _EditMedicinePageState extends State<EditMedicinePage> {
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
              name(),
              SizedBox(
                height: semiEdge,
              ),
              producent(),
              SizedBox(
                height: semiEdge,
              ),
              price(),
              SizedBox(
                height: semiEdge,
              ),
              unit(),
              SizedBox(
                height: semiEdge,
              ),
              distributors(),
              SizedBox(
                height: semiEdge,
              ),
              category(),
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
                Navigator.pop(
                  context,
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
              'Edit Medicine',
              style: titleTextStyle.copyWith(
                fontSize: 18,
              ),
            ),
          ),
          Spacer(),
          Container(
            width: 30,
            height: 30,
          ),
        ],
      ),
    );
  }

  Widget name() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Name',
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

  Widget producent() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Producent',
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
            hintText: 'PT Kimia Farma',
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
          'Price',
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
            hintText: 'Strips',
            hintStyle: descTextStyle,
          ),
          style: TextStyle(
            color: isEmailValid ? Color(0xff2A2B3D) : Color(0xffFD4F56),
          ),
        ),
      ],
    );
  }

  Widget distributors() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Distributor',
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
            hintText: 'Sanbe Farma',
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
}
