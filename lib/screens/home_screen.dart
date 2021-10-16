import 'package:flutter/material.dart';
import 'package:foodapp_demo/screens/themes.dart';
import 'package:foodapp_demo/widgets/menu_%20card.dart';
import 'package:foodapp_demo/models/menu.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 32,
                horizontal: 20,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Hello, Robith',
                    style: poppinsTextStyle.copyWith(
                      fontSize: 24,
                      fontWeight: FontWeight.w500,
                      color: kBlackColor,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Selamat datang di Burger Jawa',
                    style: poppinsTextStyle.copyWith(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: kGreyColor,
                    ),
                  ),
                  SizedBox(
                    height: 32,
                  ),
                  Text(
                    'Recomended Menu ',
                    style: poppinsTextStyle.copyWith(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      color: kBlackColor,
                    ),
                  ),
                  MenuCard(
                    menu: Menu(
                        id: 1,
                        image: 'assets/burger_reguler.png',
                        name: 'Burger Reguler',
                        price: 12000,
                        pricePromo: 8000,
                        note:
                            'Pembelian diatas 5  item bonus satu burger promo berlaku hanya pengiriman radius 2 KM setiap pembelian mendapat 1 kupon burger 10 kupon burger bisa ditukar dengan 1 burger',
                        isPromo: true),
                  ),
                  MenuCard(
                    menu: Menu(
                        id: 1,
                        image: 'assets/paket_burger1.png',
                        name: 'Paket Burger 1',
                        price: 28000,
                        pricePromo: 22000,
                        note:
                            'Pembelian diatas 5  item bonus satu burger promo berlaku hanya pengiriman radius 2 KM setiap pembelian mendapat 1 kupon burger 10 kupon burger bisa ditukar dengan 1 burger',
                        isPromo: false),
                  ),
                  MenuCard(
                    menu: Menu(
                        id: 1,
                        image: 'assets/paket_burger2.png',
                        name: 'Paket Burger 1',
                        price: 25000,
                        pricePromo: 18000,
                        note:
                            'Pembelian diatas 5  item bonus satu burger promo berlaku hanya pengiriman radius 2 KM setiap pembelian mendapat 1 kupon burger 10 kupon burger bisa ditukar dengan 1 burger',
                        isPromo: false),
                  ),
                  MenuCard(
                    menu: Menu(
                        id: 1,
                        image: 'assets/paket_burger3.png',
                        name: 'Paket Burger 1',
                        price: 22000,
                        pricePromo: 00,
                        note:
                            'Pembelian diatas 5  item bonus satu burger promo berlaku hanya pengiriman radius 2 KM setiap pembelian mendapat 1 kupon burger 10 kupon burger bisa ditukar dengan 1 burger',
                        isPromo: false),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
