import 'package:flutter/material.dart';
import 'package:apoo_flutter/theme.dart';

class BottomNavbarItem extends StatelessWidget {
  int id;
  String imageUrl;
  bool isActive;
  String name;

  BottomNavbarItem({
    this.id,
    this.imageUrl,
    this.isActive,
    this.name,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Spacer(),
        Image.asset(
          imageUrl,
          width: 24,
        ),
        SizedBox(
          height: 3,
        ),
        isActive
            ? Text(
                name,
                style: navTextStyle.copyWith(
                  color: greenColor,
                  fontWeight: FontWeight.w600,
                ),
              )
            : Text(
                name,
                style: navTextStyle.copyWith(
                  color: Color(0xffC6D6EB),
                ),
              ),
        Spacer(),
      ],
    );
  }
}
