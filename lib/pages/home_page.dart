import 'package:apoo_flutter/widgets/top_distributor.dart';
import 'package:flutter/material.dart';

import '../models/data_distributors.dart';
import '../theme.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            vertical: edge,
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: edge),
            child: ListView(
              children: [
                // Greeting
                Row(
                  children: [
                    Image.asset(
                      'assets/profile.png',
                      width: 60,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: semiEdge, right: edge),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Hello,',
                            style: helloTextStyle,
                          ),
                          Text(
                            'Permata Medical',
                            style: titleTextStyle,
                          ),
                        ],
                      ),
                    ),
                    Spacer(),
                    Image.asset(
                      'assets/notification.png',
                      width: 28,
                    ),
                  ],
                ),
                // End Greeting

                // Top Distributor
                // Padding(
                //   padding: EdgeInsets.symmetric(vertical: edge),
                //   child: Column(
                //     children: [
                //       Row(
                //         children: [
                //           Text(
                //             'Top Distributor',
                //             style: titleTextStyle,
                //           ),
                //           Spacer(),
                //           Text(
                //             'See all',
                //             style: seeAllTextStyle,
                //           )
                //         ],
                //       ),
                //       SizedBox(
                //         height: semiEdge,
                //       ),
                //       Container(
                //         height: 112,
                //         child: ListView(
                //           scrollDirection: Axis.horizontal,
                //           children: [
                //             TopDistributor(
                //               DataDistributor(
                //                 id: 1,
                //                 name: 'Kalbe Farma',
                //                 products: 241,
                //                 imageUrl: 'assets/topDist1.png',
                //               ),
                //             ),
                //             SizedBox(
                //               width: semiEdge,
                //             ),
                //             TopDistributor(
                //               DataDistributor(
                //                 id: 2,
                //                 name: 'Sanbe Farma',
                //                 products: 114,
                //                 imageUrl: 'assets/topDist2.png',
                //               ),
                //             ),
                //             SizedBox(
                //               width: semiEdge,
                //             ),
                //             TopDistributor(
                //               DataDistributor(
                //                 id: 1,
                //                 name: 'Dexa Medica',
                //                 products: 321,
                //                 imageUrl: 'assets/topDist3.png',
                //               ),
                //             ),
                //           ],
                //         ),
                //       )
                //     ],
                //   ),
                // ),
                // End Top Distributor

                // Top Selling Product
                Padding(
                  padding: EdgeInsets.symmetric(vertical: edge),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            'Top Selling Product',
                            style: titleTextStyle,
                          ),
                          Spacer(),
                          Text(
                            'See all',
                            style: seeAllTextStyle,
                          )
                        ],
                      ),
                      SizedBox(
                        height: semiEdge,
                      ),
                      Container(
                        height: 112,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            TopDistributor(
                              DataDistributor(
                                id: 1,
                                name: 'Kalbe Farma',
                                products: 241,
                                imageUrl: 'assets/topDist1.png',
                              ),
                            ),
                            SizedBox(
                              width: semiEdge,
                            ),
                            TopDistributor(
                              DataDistributor(
                                id: 2,
                                name: 'Sanbe Farma',
                                products: 114,
                                imageUrl: 'assets/topDist2.png',
                              ),
                            ),
                            SizedBox(
                              width: semiEdge,
                            ),
                            TopDistributor(
                              DataDistributor(
                                id: 1,
                                name: 'Dexa Medica',
                                products: 321,
                                imageUrl: 'assets/topDist3.png',
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                // End Top Selling Product
              ],
            ),
          ),
        ),
      ),
    );
  }
}
