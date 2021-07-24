import 'package:flutter/material.dart';
import 'package:food_delivery/theme.dart';

class OrderCard extends StatelessWidget {
  final String imageUrl;
  final String menuTitle;
  final String menuId;
  final String price;
  final String sizeType;
  final int qty;

  OrderCard({
    this.imageUrl,
    this.menuTitle,
    this.menuId,
    this.price,
    this.sizeType,
    this.qty,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.asset(
            imageUrl,
            width: 95,
            height: 95,
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(
          width: 20,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              menuTitle,
              style: titleTextstyle.copyWith(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: blackColor,
              ),
            ),
            Text(
              menuId,
              style: subTitleTextStyle.copyWith(
                fontSize: 12,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              price,
              style: titleTextstyle.copyWith(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: semiYellowColor,
              ),
            ),
          ],
        ),
        Spacer(),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(''),
            Text(
              sizeType,
              style: subTitleTextStyle.copyWith(
                fontSize: 12,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              '$qty Items',
              style: subTitleTextStyle.copyWith(
                fontSize: 12,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
