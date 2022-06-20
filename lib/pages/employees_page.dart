import 'package:apoo_flutter/pages/base_page.dart';
import 'package:apoo_flutter/pages/new_employee_page.dart';
import 'package:apoo_flutter/theme.dart';
import 'package:flutter/material.dart';

class EmployeesPage extends StatefulWidget {
  @override
  State<EmployeesPage> createState() => _EmployeesPageState();
}

class _EmployeesPageState extends State<EmployeesPage> {
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
                    builder: (context) => NewEmployeePage(),
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
                    'Add New Employee',
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
                  builder: (context) => BasePage(),
                ),
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
              'Employees',
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
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 12,
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.asset(
                    'assets/profile1.png',
                    width: 66,
                    height: 66,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  vertical: 20,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Ghea Rofifah, S.far.,Apt.',
                      style: titleTextStyle,
                    ),
                    Spacer(),
                    Padding(
                      padding: EdgeInsets.only(
                        right: 12,
                      ),
                      child: Container(
                        width: 200,
                        child: Text(
                          'Apoteker Pengelola Apotek (APA)',
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: descTextStyle.copyWith(
                            color: greenColor,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
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
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 12,
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.asset(
                    'assets/profile2.png',
                    width: 66,
                    height: 66,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  vertical: 20,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Mustari Mahesa Lana',
                      style: titleTextStyle,
                    ),
                    Spacer(),
                    Padding(
                      padding: EdgeInsets.only(
                        right: 12,
                      ),
                      child: Text(
                        'Aping',
                        style: descTextStyle.copyWith(
                          color: greenColor,
                        ),
                      ),
                    ),
                  ],
                ),
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
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 12,
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.asset(
                    'assets/profile3.png',
                    width: 66,
                    height: 66,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  vertical: 20,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Sri Nurmala Dewi',
                      style: titleTextStyle,
                    ),
                    Spacer(),
                    Padding(
                      padding: EdgeInsets.only(
                        right: 12,
                      ),
                      child: Text(
                        'Supervisor',
                        style: descTextStyle.copyWith(
                          color: greenColor,
                        ),
                      ),
                    ),
                  ],
                ),
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
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 12,
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.asset(
                    'assets/profile4.png',
                    width: 66,
                    height: 66,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  vertical: 20,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Syifa Nurmala Rachmi',
                      style: titleTextStyle,
                    ),
                    Spacer(),
                    Padding(
                      padding: EdgeInsets.only(
                        right: 12,
                      ),
                      child: Text(
                        'Asisten Apoteker',
                        style: descTextStyle.copyWith(
                          color: greenColor,
                        ),
                      ),
                    ),
                  ],
                ),
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
