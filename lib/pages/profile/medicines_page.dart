import 'package:apoo_flutter/theme.dart';
import 'package:apoo_flutter/widgets/list_medicine.dart';
import 'package:flutter/material.dart';

import '../../models/data_product.dart';

class MedicinesPage extends StatefulWidget {
  @override
  State<MedicinesPage> createState() => _MedicinesPageState();
}

class _MedicinesPageState extends State<MedicinesPage> {
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
              search(),
              SizedBox(
                height: semiEdge,
              ),
              medicines(),
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
                    'Add new medicine',
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
              'Medicines',
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

  Widget search() {
    return Padding(
      padding: EdgeInsets.only(
        top: semiEdge,
      ),
      child: Container(
        decoration: BoxDecoration(
          color: Color(0xffFFFFFF),
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              decoration: InputDecoration(
                  fillColor: whiteColor,
                  prefixIcon: Icon(Icons.search),
                  hintText: 'Search your medicine',
                  hintStyle: descTextStyle.copyWith(
                    color: thirdColor,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide.none,
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide.none,
                  )),
              style: TextStyle(
                color: isEmailValid ? Color(0xff2A2B3D) : Color(0xffFD4F56),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget medicines() {
    return Container(
      child: Column(
        children: [
          SizedBox(
            height: edge,
          ),
          Container(
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: ListMedicine(
                        DataProduct(
                          id: 1,
                          imageUrl: 'assets/prod1.png',
                          name: 'Paracetamol',
                          category: 'Obat Bebas',
                          producent: 'PT Kalbe Farma',
                        ),
                      ),
                    ),
                    SizedBox(
                      width: semiEdge,
                    ),
                    Expanded(
                      child: ListMedicine(
                        DataProduct(
                          id: 2,
                          imageUrl: 'assets/prod2.png',
                          name: 'Acarbose',
                          category: 'Obat Keras',
                          producent: 'PT Kimia Farma',
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: semiEdge,
                ),
                Row(
                  children: [
                    Expanded(
                      child: ListMedicine(
                        DataProduct(
                          id: 3,
                          imageUrl: 'assets/prod3.png',
                          name: 'Amiodrone',
                          category: 'Obat Herbal',
                          producent: 'PT Kalbe Farma',
                        ),
                      ),
                    ),
                    SizedBox(
                      width: semiEdge,
                    ),
                    Expanded(
                      child: ListMedicine(
                        DataProduct(
                          id: 4,
                          imageUrl: 'assets/prod4.png',
                          name: 'Allylestrenol',
                          category: 'Obat Herbal',
                          producent: 'PT Kalbe Farma',
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: semiEdge,
                ),
                Row(
                  children: [
                    Expanded(
                      child: ListMedicine(
                        DataProduct(
                          id: 5,
                          imageUrl: 'assets/prod5.png',
                          name: 'Amineptine',
                          category: 'Obat bebas',
                          producent: 'PT Kalbe Farma',
                        ),
                      ),
                    ),
                    SizedBox(
                      width: semiEdge,
                    ),
                    Expanded(
                      child: ListMedicine(
                        DataProduct(
                          id: 6,
                          imageUrl: 'assets/prod6.png',
                          name: 'Amoxapine',
                          category: 'Obat Keras',
                          producent: 'PT Kalbe Farma',
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: semiEdge,
                ),
                Row(
                  children: [
                    Expanded(
                      child: ListMedicine(
                        DataProduct(
                          id: 7,
                          imageUrl: 'assets/prod7.png',
                          name: 'Ampicillin',
                          category: 'Obat Herbal',
                          producent: 'PT Kalbe Farma',
                        ),
                      ),
                    ),
                    SizedBox(
                      width: semiEdge,
                    ),
                    Expanded(
                      child: ListMedicine(
                        DataProduct(
                          id: 8,
                          imageUrl: 'assets/prod8.png',
                          name: 'Amoxillin',
                          category: 'Obat Herbal',
                          producent: 'PT Kalbe Farma',
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
