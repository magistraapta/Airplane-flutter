import 'package:flutter/material.dart';
import '../shared/theme.dart';

class BonusPage extends StatelessWidget {
  const BonusPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget bonusText() {
      Widget bonusButton() {
        return Container(
            width: 220,
            height: 55,
            decoration: BoxDecoration(
                color: kPrimaryColor,
                borderRadius: BorderRadius.circular(defaultRadius)),
            child: TextButton(
                onPressed: () {},
                child: Text('Start fly now',
                    style: whiteTextStyle.copyWith(
                        fontSize: 18, fontWeight: medium))));
      }

      return Column(
        children: [
          Column(
            children: [
              Text(
                'Big Bonus🔥',
                style:
                    blackTextStyle.copyWith(fontSize: 32, fontWeight: semibold),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'We give you early credit so that\nyou can buy a flight ticket',
                textAlign: TextAlign.center,
                style: grayTextStyle.copyWith(fontSize: 16, fontWeight: medium),
              )
            ],
          ),
          SizedBox(
            height: 50,
          ),
          bonusButton()
        ],
      );
    }

    Widget card() {
      Widget balance() {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Balance",
              style: whiteTextStyle.copyWith(fontSize: 14, fontWeight: light),
            ),
            Text(
              "Rp.280.000.000",
              style:
                  whiteTextStyle.copyWith(fontSize: 26, fontWeight: semibold),
            )
          ],
        );
      }

      Widget cardName() {
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Name",
                  style:
                      whiteTextStyle.copyWith(fontSize: 14, fontWeight: light),
                ),
                Text(
                  "Michael",
                  style: whiteTextStyle.copyWith(
                      fontSize: 20, fontWeight: semibold),
                )
              ],
            ),
            Row(
              children: [
                Image.asset(
                  'assets/icon_airplane.png',
                  width: 24,
                  height: 24,
                ),
                SizedBox(
                  width: 6,
                ),
                Text(
                  "Pay",
                  style:
                      whiteTextStyle.copyWith(fontSize: 16, fontWeight: medium),
                )
              ],
            )
          ],
        );
      }

      return Container(
        width: 300,
        height: 211,
        padding: EdgeInsets.all(24),
        decoration: BoxDecoration(
            // borderRadius: BorderRadius.circular(34), color: kPrimaryColor
            image: DecorationImage(image: AssetImage('assets/card.png')),
            boxShadow: [
              BoxShadow(color: kPrimaryColor.withOpacity(0.5), blurRadius: 50)
            ]),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [cardName(), balance()],
        ),
      );
    }

    return Scaffold(
        backgroundColor: kBackgroundColor,
        body: SafeArea(
          child: Center(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                card(),
                SizedBox(
                  height: 80,
                ),
                bonusText()
              ])),
        ));
  }
}
