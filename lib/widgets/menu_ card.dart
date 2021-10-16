import 'package:flutter/material.dart';
import 'package:foodapp_demo/screens/detail_screen.dart';
import 'package:foodapp_demo/screens/themes.dart';
import 'package:foodapp_demo/models/menu.dart';

class MenuCard extends StatelessWidget {
  final Menu menu;

  MenuCard({required this.menu});

  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => DetailScreen(),
            ));
      },
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 10),
        child: Row(
          children: [
            Image.asset(
              menu.image,
              width: 130,
              height: 110,
            ),
            SizedBox(
              width: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                menu.isPromo
                    ? Image.asset(
                        'assets/Promo.png',
                        width: 47,
                        height: 16,
                      )
                    : Image.asset(
                        'assets/Terlaris.png',
                        width: 47,
                        height: 16,
                      ),
                SizedBox(
                  height: 4,
                ),
                Text(
                  menu.name,
                  style: poppinsTextStyle.copyWith(
                    fontSize: 18,
                    color: kBlackColor,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(
                  height: 4,
                ),
                Row(
                  children: [
                    Text(
                      'Rp ${menu.price}',
                      style: poppinsTextStyle.copyWith(
                        fontSize: 14,
                        color: kGreyColor,
                        fontWeight: FontWeight.w500,
                        decoration: TextDecoration.lineThrough,
                      ),
                    ),
                    SizedBox(
                      width: 3,
                    ),
                    Text(
                      ' Rp ${menu.pricePromo}',
                      style: poppinsTextStyle.copyWith(
                        fontSize: 14,
                        color: kYellowColor,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                Text(
                  'Free Delivery',
                  style: poppinsTextStyle.copyWith(
                    fontSize: 12,
                    color: kGreyColor,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
