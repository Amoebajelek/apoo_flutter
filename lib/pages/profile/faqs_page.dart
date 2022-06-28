import 'package:apoo_flutter/pages/base_page.dart';
import 'package:apoo_flutter/theme.dart';
import 'package:flutter/material.dart';

class FaqsPage extends StatefulWidget {
  @override
  State<FaqsPage> createState() => _FaqsPageState();
}

class _FaqsPageState extends State<FaqsPage> {
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
              list(),
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
              height: edge,
              width: edge,
            ),
          ),
          Spacer(),
          Center(
            child: Text(
              'FAQs',
              style: titleTextStyle.copyWith(
                fontSize: 18,
              ),
            ),
          ),
          Spacer(),
          Container(
            height: 30,
            width: 30,
          )
        ],
      ),
    );
  }

  Widget list() {
    return Column(
      children: [
        Container(
          height: 90,
          width: MediaQuery.of(context).size.width - (2 * edge),
          decoration: BoxDecoration(
            color: whiteColor,
            borderRadius: BorderRadius.circular(12),
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
          child: Row(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(
                  vertical: 20,
                  horizontal: 20,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: 200,
                      child: Text(
                        'Memaksimalkan omzet usaha apotek',
                        style: titleTextStyle,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              ),
              Spacer(),
              Image.asset(
                'assets/dropdown-green.png',
                height: 8,
                width: 14,
              ),
              SizedBox(
                width: edge,
              ),
            ],
          ),
        ),
        SizedBox(
          height: semiEdge,
        ),
        Container(
          height: 90,
          width: MediaQuery.of(context).size.width - (2 * edge),
          decoration: BoxDecoration(
            color: whiteColor,
            borderRadius: BorderRadius.circular(12),
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
          child: Row(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(
                  vertical: 20,
                  horizontal: 20,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: 200,
                      child: Text(
                        'Aping',
                        style: titleTextStyle,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              ),
              Spacer(),
              Image.asset(
                'assets/dropdown-green.png',
                height: 8,
                width: 14,
              ),
              SizedBox(
                width: edge,
              ),
            ],
          ),
        ),
        SizedBox(
          height: semiEdge,
        ),
        Container(
          height: 90,
          width: MediaQuery.of(context).size.width - (2 * edge),
          decoration: BoxDecoration(
            color: whiteColor,
            borderRadius: BorderRadius.circular(12),
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
          child: Row(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(
                  vertical: 20,
                  horizontal: 20,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: 200,
                      child: Text(
                        'Pengelolaan apotek yang baik',
                        style: titleTextStyle,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              ),
              Spacer(),
              Image.asset(
                'assets/dropdown-green.png',
                height: 8,
                width: 14,
              ),
              SizedBox(
                width: edge,
              ),
            ],
          ),
        ),
        SizedBox(
          height: semiEdge,
        ),
        Container(
          height: 90,
          width: MediaQuery.of(context).size.width - (2 * edge),
          decoration: BoxDecoration(
            color: whiteColor,
            borderRadius: BorderRadius.circular(12),
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
          child: Row(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(
                  vertical: 20,
                  horizontal: 20,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: 200,
                      child: Text(
                        'Strategi bisnis online untuk apotek',
                        style: titleTextStyle,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              ),
              Spacer(),
              Image.asset(
                'assets/dropdown-green.png',
                height: 8,
                width: 14,
              ),
              SizedBox(
                width: edge,
              ),
            ],
          ),
        ),
        SizedBox(
          height: semiEdge,
        ),
      ],
    );
  }
}
