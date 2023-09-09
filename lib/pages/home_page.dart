import 'package:flutter/material.dart';
import 'package:newapp/components/navigation_item.dart';
import 'package:newapp/components/small_card.dart';
import 'package:newapp/components/top_destination.dart';
import '../shared/theme.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      Widget headerName() {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Howdy,\nKezia Anne",
              style:
                  blackTextStyle.copyWith(fontSize: 24, fontWeight: semibold),
            ),
            SizedBox(
              height: 6,
            ),
            Text(
              "Where to fly today?",
              style: grayTextStyle.copyWith(fontSize: 16, fontWeight: light),
            )
          ],
        );
      }

      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [headerName(), Image.asset('assets/user.png')],
      );
    }

    Widget newThisYear() {
      return Container(
        margin: EdgeInsets.only(top: 30, bottom: 140),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "New this year",
              style:
                  blackTextStyle.copyWith(fontSize: 18, fontWeight: semibold),
            ),
            SmallCard(
              name: "Danau Beratana",
              country: 'Singapura',
              imageUrl: 'cover-1.png',
            ),
            SmallCard(
              name: "Sydney Opera",
              country: 'Australia',
              imageUrl: 'cover-2.png',
            ),
            SmallCard(
              name: "Roma",
              country: 'Italy',
              imageUrl: 'cover-3.png',
            ),
            SmallCard(
              name: "Payung Teduh",
              country: 'Singapura',
              imageUrl: 'cover-4.png',
            ),
          ],
        ),
      );
    }

    return Container(
      margin: EdgeInsets.symmetric(horizontal: defaultMargin),
      child: ListView(
        children: [header(), TopDestination(), newThisYear()],
      ),
    );
  }
}
