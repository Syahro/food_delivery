import 'package:flutter/material.dart';
import 'package:food_delivery/theme.dart';
import 'package:food_delivery/widget/order_card.dart';
import 'package:food_delivery/widget/time_loc_info.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/map.png',
            width: double.infinity,
            height: 405,
            fit: BoxFit.cover,
          ),
          ListView(
            children: [
              SizedBox(
                height: 370,
              ),
              Stack(
                children: [
                  Container(
                    width: double.infinity,
                    height: 200,
                    decoration: BoxDecoration(
                      color: semiBlackColor,
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(30),
                      ),
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(
                            defaultMargin,
                            20,
                            defaultMargin,
                            20,
                          ),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Container(
                                    height: 100,
                                    width: 79,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(25),
                                    ),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        ClipRRect(
                                          borderRadius: BorderRadius.vertical(
                                            top: Radius.circular(25),
                                          ),
                                          child: Image.asset(
                                            'assets/profile.png',
                                            width: 70,
                                            height: 65,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                        Container(
                                          height: 35,
                                          width: 70,
                                          decoration: BoxDecoration(
                                            color: whiteColor,
                                            borderRadius: BorderRadius.vertical(
                                              bottom: Radius.circular(25),
                                            ),
                                          ),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Icon(
                                                Icons.star,
                                                color: yellowColor,
                                                size: 20,
                                              ),
                                              SizedBox(
                                                width: 6,
                                              ),
                                              Text(
                                                '4.9',
                                                style: titleTextstyle.copyWith(
                                                  fontSize: 12,
                                                  color: blackColor,
                                                  fontWeight: FontWeight.w700,
                                                ),
                                              ),
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'James Zonk',
                                        style: titleTextstyle.copyWith(
                                          fontSize: 16,
                                        ),
                                      ),
                                      Text(
                                        'ID : 007',
                                        style: titleTextstyle.copyWith(
                                          fontSize: 14,
                                          color: whiteColor.withOpacity(0.7),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        'Delivery Courier',
                                        style: titleTextstyle.copyWith(
                                          fontSize: 14,
                                          color: whiteColor.withOpacity(0.7),
                                        ),
                                      )
                                    ],
                                  ),
                                  Spacer(),
                                  Container(
                                    height: 40,
                                    width: 40,
                                    decoration: BoxDecoration(
                                      color: semiYellowColor,
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: Center(
                                      child: Icon(
                                        Icons.phone_enabled,
                                        color: blackColor,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 140),
                    child: Column(
                      children: [
                        Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: whiteColor,
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(
                              defaultMargin,
                              25,
                              defaultMargin,
                              25,
                            ),
                            child: Column(
                              children: [
                                TimeLocInfo(
                                  deliveryTime: true,
                                  deliveryTitle: 'Your Delivery Time',
                                  deliveryInfo: '3 Minutes',
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 20),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Image.asset(
                                        'assets/time_plan.png',
                                        height: 33,
                                        width: 1,
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 2,
                                ),
                                TimeLocInfo(
                                  deliveryTime: false,
                                  deliveryTitle: 'Your Delivery Address',
                                  deliveryInfo: 'Jl Mutiara Inkopad',
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: whiteColor,
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(
                              defaultMargin,
                              20,
                              defaultMargin,
                              20,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Order Information',
                                  style: titleTextstyle.copyWith(
                                    fontSize: 14,
                                    color: blackColor,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                OrderCard(
                                  imageUrl: 'assets/menu1.png',
                                  menuTitle: 'Pizza Pro Max',
                                  menuId: 'ID : 2eZ4Me',
                                  price: 'Rp. 120.000',
                                  sizeType: '(Medium)',
                                  qty: 2,
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                Divider(),
                                SizedBox(
                                  height: 15,
                                ),
                                OrderCard(
                                  imageUrl: 'assets/menu2.png',
                                  menuTitle: 'Coca Cola Max',
                                  menuId: 'ID : 2eZ4Me',
                                  price: 'Rp. 60.000',
                                  sizeType: '(Cold)',
                                  qty: 6,
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                Divider(),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          width: double.infinity,
                          height: 200,
                          decoration: BoxDecoration(
                            color: whiteColor,
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
