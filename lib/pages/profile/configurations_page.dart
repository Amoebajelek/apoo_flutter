import 'package:apoo_flutter/theme.dart';
import 'package:flutter/material.dart';

import 'distributors_page.dart';
import 'medicines_page.dart';

class ConfigurationsPage extends StatefulWidget {
  static const routeName = '/configurationspage';

  @override
  State<ConfigurationsPage> createState() => _ConfigurationsPageState();
}

class _ConfigurationsPageState extends State<ConfigurationsPage> {
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
      // bottomNavigationBar: Container(
      //   height: 135,
      //   width: MediaQuery.of(context).size.width,
      //   decoration: BoxDecoration(
      //     color: whiteColor,
      //     borderRadius: BorderRadius.circular(10),
      //     boxShadow: [
      //       BoxShadow(
      //         color: Colors.grey.shade200,
      //         blurRadius: 10.0,
      //         spreadRadius: 0.2,
      //         offset: Offset(
      //           0.5,
      //           0.5,
      //         ),
      //       ),
      //     ],
      //   ),
      //   child: Column(
      //     mainAxisAlignment: MainAxisAlignment.spaceAround,
      //     children: [
      //       InkWell(
      //         onTap: () {
      //           Navigator.push(
      //             context,
      //             MaterialPageRoute(
      //               builder: (context) => BasePage(),
      //             ),
      //           );
      //         },
      //         child: Container(
      //           height: 50,
      //           width: MediaQuery.of(context).size.width - (2 * edge),
      //           decoration: BoxDecoration(
      //             color: greenColor,
      //             border: Border.all(
      //               color: greenColor,
      //               width: 1.0,
      //               style: BorderStyle.solid,
      //             ),
      //             borderRadius: BorderRadius.circular(12),
      //           ),
      //           child: Center(
      //             child: Text(
      //               'Add New Distributor',
      //               style: titleTextStyle.copyWith(
      //                 fontSize: 18,
      //                 color: whiteColor,
      //               ),
      //               textAlign: TextAlign.center,
      //             ),
      //           ),
      //         ),
      //       ),
      //     ],
      //   ),
      // ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
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
              'Configurations',
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
        InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (c) => DistributorsPage(),
              ),
            );
          },
          child: Row(
            children: [
              Image.asset(
                'assets/ic-distributors.png',
                height: 24,
                width: 24,
                color: Color(0xffC6D6EB),
              ),
              SizedBox(
                width: 15,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Distributors',
                    style: titleTextStyle.copyWith(
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    'Distributor list',
                    style: seeAllTextStyle,
                  )
                ],
              ),
              Spacer(),
              Icon(
                Icons.keyboard_arrow_right,
                color: Color(0xffC6D6EB),
                size: 20.0,
              ),
            ],
          ),
        ),
        SizedBox(
          height: semiEdge,
        ),
        InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (c) => MedicinesPage(),
              ),
            );
          },
          child: Row(
            children: [
              Image.asset(
                'assets/ic-medicines.png',
                height: 24,
                width: 24,
                color: Color(0xffC6D6EB),
              ),
              SizedBox(
                width: 15,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Medicines',
                    style: titleTextStyle.copyWith(
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    'Medicine list',
                    style: seeAllTextStyle,
                  )
                ],
              ),
              Spacer(),
              Icon(
                Icons.keyboard_arrow_right,
                color: Color(0xffC6D6EB),
                size: 20.0,
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
