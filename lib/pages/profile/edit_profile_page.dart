import 'package:email_validator/email_validator.dart';
import 'package:apoo_flutter/theme.dart';
import 'package:flutter/material.dart';

class EditProfilePage extends StatefulWidget {
  static const routeName = '/editprofilepage';

  @override
  State<EditProfilePage> createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
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
              name(),
              SizedBox(
                height: semiEdge,
              ),
              province(),
              SizedBox(
                height: semiEdge,
              ),
              city(),
              SizedBox(
                height: semiEdge,
              ),
              disctrict(),
              SizedBox(
                height: semiEdge,
              ),
              address(),
              SizedBox(
                height: semiEdge,
              ),
              email(),
              SizedBox(
                height: semiEdge,
              ),
              phone(),
              SizedBox(
                height: semiEdge,
              ),
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
                    'Edit',
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
              'Edit Profile',
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
      'assets/profile.png',
      height: 100,
      width: 100,
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
            hintText: 'Permata Medical',
            hintStyle: descTextStyle.copyWith(
              color: blackColor,
            ),
          ),
          style: TextStyle(
            color: isEmailValid ? Color(0xff2A2B3D) : Color(0xffFD4F56),
          ),
        ),
      ],
    );
  }

  Widget province() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Province',
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
            hintText: 'West Java',
            hintStyle: descTextStyle.copyWith(color: blackColor),
          ),
          style: TextStyle(
            color: isEmailValid ? Color(0xff2A2B3D) : Color(0xffFD4F56),
          ),
        ),
      ],
    );
  }

  Widget city() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'City',
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
            hintText: 'West Bandung',
            hintStyle: descTextStyle.copyWith(
              color: blackColor,
            ),
          ),
          style: TextStyle(
            color: isEmailValid ? Color(0xff2A2B3D) : Color(0xffFD4F56),
          ),
        ),
      ],
    );
  }

  Widget disctrict() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'District',
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
            hintText: 'Batujajar',
            hintStyle: descTextStyle.copyWith(
              color: blackColor,
            ),
          ),
          style: TextStyle(
            color: isEmailValid ? Color(0xff2A2B3D) : Color(0xffFD4F56),
          ),
        ),
      ],
    );
  }

  Widget address() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Address',
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
            hintText: 'Jl. Kolonel Masturi no. 442',
            hintStyle: descTextStyle.copyWith(
              color: blackColor,
            ),
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
            hintText: 'media@permatamedical.com',
            hintStyle: descTextStyle.copyWith(
              color: blackColor,
            ),
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
            hintText: '0812 3456 7890',
            hintStyle: descTextStyle.copyWith(
              color: blackColor,
            ),
          ),
          style: TextStyle(
            color: isEmailValid ? Color(0xff2A2B3D) : Color(0xffFD4F56),
          ),
        ),
      ],
    );
  }
}
