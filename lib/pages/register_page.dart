import 'package:flutter/material.dart';
import 'package:email_validator/email_validator.dart';

import '../theme.dart';

class RegisterPage extends StatefulWidget {
  static const routeName = '/registerpage';

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  bool isEmailValid = true;

  TextEditingController emailController = TextEditingController(text: '');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            SizedBox(
              height: edge,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: edge),
              child: Text(
                'Create your account',
                style: titleTextStyle.copyWith(
                  fontSize: 18,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: edge),
              child: Text(
                'Register and Get Started',
                style: descTextStyle,
              ),
            ),
            Center(
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: edge,
                  vertical: edge,
                ),
                child: Container(
                  height: 235,
                  width: 240,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/register.png')),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: edge),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Apotek\s Name',
                    style: descTextStyle,
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
                      hintText: 'Apotek\s Name',
                      hintStyle: descTextStyle,
                    ),
                    style: TextStyle(
                      color:
                          isEmailValid ? Color(0xff2A2B3D) : Color(0xffFD4F56),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: edge,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: edge),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Apotek\s Email Address',
                    style: descTextStyle,
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
                      hintText: 'Apotek\s Email Address',
                      hintStyle: descTextStyle,
                    ),
                    style: TextStyle(
                      color:
                          isEmailValid ? Color(0xff2A2B3D) : Color(0xffFD4F56),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: edge,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: edge),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Apotek\s Password',
                    style: descTextStyle,
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
                      hintText: 'Apotek\s Password',
                      hintStyle: descTextStyle,
                    ),
                    style: TextStyle(
                      color:
                          isEmailValid ? Color(0xff2A2B3D) : Color(0xffFD4F56),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 3 * edge,
            ),
            Container(
              height: 50,
              width: MediaQuery.of(context).size.width - (2 * edge),
              margin: EdgeInsets.symmetric(horizontal: edge),
              child: RaisedButton(
                onPressed: () {
                  Navigator.of(context).pushReplacementNamed('/basepage');
                },
                color: greenColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  children: [
                    Spacer(),
                    Text(
                      'Register',
                      style: buttonTextStyle,
                    ),
                    Spacer(),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: edge),
              child: Center(
                child: InkWell(
                  onTap: () {
                    Navigator.of(context).pushNamed('/loginpage');
                  },
                  child: Text.rich(
                    TextSpan(
                        text: 'Already have an account?',
                        style: descTextStyle,
                        children: [
                          TextSpan(
                            text: ' Login',
                            style: helloTextStyle.copyWith(
                              fontSize: 14,
                            ),
                          )
                        ]),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
