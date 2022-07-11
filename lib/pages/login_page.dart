import 'package:flutter/material.dart';
import 'package:email_validator/email_validator.dart';

import '../theme.dart';
import 'base_page.dart';
import 'register_page.dart';

class LoginPage extends StatefulWidget {
  static const routeName = '/loginpage';

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool isEmailValid = true;

  TextEditingController emailController = TextEditingController(text: '');
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        body: SafeArea(
          child: ListView(
            keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
            children: [
              SizedBox(
                height: edge,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: edge),
                child: Text(
                  'Welcome Back,',
                  style: titleTextStyle.copyWith(
                    fontSize: 18,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: edge),
                child: Text(
                  'Login to continue',
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
                          image: AssetImage('assets/login.png')),
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
                      'Username',
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
                        hintText: 'Your Username',
                        hintStyle: descTextStyle,
                      ),
                      style: TextStyle(
                        color: isEmailValid
                            ? Color(0xff2A2B3D)
                            : Color(0xffFD4F56),
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
                      'Password',
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
                        hintText: 'Your Password',
                        hintStyle: descTextStyle,
                      ),
                      style: TextStyle(
                        color: isEmailValid
                            ? Color(0xff2A2B3D)
                            : Color(0xffFD4F56),
                      ),
                    ),
                  ],
                ),
              ),
              // Spacer(),
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
                        'Login',
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
                      Navigator.of(context).pushNamed('/registerpage');
                    },
                    child: Text.rich(
                      TextSpan(
                          text: 'Don\'t have an account?',
                          style: descTextStyle,
                          children: [
                            TextSpan(
                              text: ' Register',
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
      ),
    );
  }
}
