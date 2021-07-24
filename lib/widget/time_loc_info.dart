import 'package:flutter/material.dart';
import 'package:food_delivery/theme.dart';

class TimeLocInfo extends StatelessWidget {
  final bool deliveryTime;
  final String deliveryTitle;
  final String deliveryInfo;

  TimeLocInfo({
    this.deliveryTime,
    this.deliveryTitle,
    this.deliveryInfo,
  });
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 40,
          width: 40,
          decoration: BoxDecoration(
            color: whiteColor,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: lightGreyColor.withOpacity(0.2),
                blurRadius: 2,
                spreadRadius: 2,
                offset: Offset(1, 2),
              )
            ],
          ),
          child: Center(
            child: Container(
              height: 23,
              width: 23,
              decoration: BoxDecoration(
                color: semiBlackColor,
                borderRadius: BorderRadius.circular(14),
              ),
              child: Center(
                child: Icon(
                  deliveryTime ? Icons.nightlight_round : Icons.location_on,
                  color: whiteColor,
                  size: 15,
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          width: 20,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              deliveryTitle,
              style: subTitleTextStyle.copyWith(
                fontSize: 10,
              ),
            ),
            Text(
              deliveryInfo,
              style: titleTextstyle.copyWith(
                fontSize: 12,
                color: blackColor,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        )
      ],
    );
  }
}
