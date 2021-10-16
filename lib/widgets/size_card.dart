import 'package:flutter/material.dart';
import 'package:foodapp_demo/screens/themes.dart';
import 'package:foodapp_demo/models/size.dart';

class SizeCard extends StatelessWidget {
  final Size size;
  const SizeCard(this.size, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: size.isActive
          ? Container(
              padding: const EdgeInsets.symmetric(
                vertical: 5,
                horizontal: 10,
              ),
              decoration: BoxDecoration(
                color: kWhiteGreyColor,
                borderRadius: BorderRadius.circular(5),
                border: Border.all(
                  color: kWhiteGreyColor,
                  width: 1.5,
                ),
              ),
              child: Text(
                size.name,
                style: poppinsTextStyle.copyWith(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: kBlackColor,
                ),
              ),
            )
          : Container(
              padding: const EdgeInsets.symmetric(
                vertical: 5,
                horizontal: 10,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                border: Border.all(
                  color: kWhiteGreyColor,
                  width: 1.5,
                ),
              ),
              child: Text(
                size.name,
                style: poppinsTextStyle.copyWith(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: kBlackColor,
                ),
              ),
            ),
    );
  }
}
