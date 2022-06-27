// ignore_for_file: deprecated_member_use

import 'package:apoo_flutter/pages/login_page.dart';
import 'package:apoo_flutter/theme.dart';
import 'package:flutter/material.dart';

import '../theme.dart';

class StartedPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: edge,
          ),
          child: ListView(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 120, bottom: 50),
                child: Container(
                  height: 235,
                  width: 240,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        'assets/slider1.png',
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 15),
                child: Text(
                  'Temukan obat yang anda butuhkan dengan cepat dan tepat',
                  style: sliderTextStyle,
                  textAlign: TextAlign.center,
                ),
              ),
              Text(
                'Segera registrasi di Apoo, temukan semua obat yang kamu butuhkan dan order dengan cepat',
                style: descTextStyle,
                textAlign: TextAlign.center,
                maxLines: 3,
                overflow: TextOverflow.clip,
              ),
              SizedBox(
                height: 4 * edge,
              ),
              Container(
                height: 50,
                width: MediaQuery.of(context).size.width,
                child: RaisedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LoginPage(),
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
                        'Get Started',
                        style: buttonTextStyle,
                      ),
                      Spacer(),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: edge,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
