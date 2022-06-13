import 'package:email_validator/email_validator.dart';
import 'package:apoo_flutter/theme.dart';
import 'package:flutter/material.dart';

import 'employees_page.dart';

class NewEmployeePage extends StatefulWidget {
  @override
  State<NewEmployeePage> createState() => _NewEmployeePageState();
}

class _NewEmployeePageState extends State<NewEmployeePage> {
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
                height: semiEdge,
              ),
              nik(),
              SizedBox(
                height: semiEdge,
              ),
              name(),
              SizedBox(
                height: semiEdge,
              ),
              email(),
              SizedBox(
                height: semiEdge,
              ),
              phone(),
              SizedBox(
                height: edge,
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
                    builder: (context) => EmployeesPage(),
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
                  builder: (context) => EmployeesPage(),
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
              'Add New Employee',
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
    return Image.asset(
      'assets/upload_image.png',
      width: 140,
      height: 140,
    );
  }

  Widget nik() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'NIK',
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
            hintText: 'your NIK number',
            hintStyle: descTextStyle,
          ),
          style: TextStyle(
            color: isEmailValid ? Color(0xff2A2B3D) : Color(0xffFD4F56),
          ),
        ),
      ],
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
            hintText: 'Your Name',
            hintStyle: descTextStyle,
          ),
          style: TextStyle(
            color: isEmailValid ? Color(0xff2A2B3D) : Color(0xffFD4F56),
          ),
        ),
      ],
    );
  }

  Widget position() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Position',
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
            hintText: 'your position',
            hintStyle: descTextStyle,
          ),
          style: TextStyle(
            color: isEmailValid ? Color(0xff2A2B3D) : Color(0xffFD4F56),
          ),
        ),
      ],
    );
  }

  Widget email() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Email Address',
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
            hintText: 'your email address',
            hintStyle: descTextStyle,
          ),
          style: TextStyle(
            color: isEmailValid ? Color(0xff2A2B3D) : Color(0xffFD4F56),
          ),
        ),
      ],
    );
  }

  Widget phone() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Phone Number',
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
            hintText: 'your phone number',
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
