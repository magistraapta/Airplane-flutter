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

    Widget customNavigation() {
      return Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            width: double.infinity,
            height: 60,
            margin: EdgeInsets.only(
                bottom: 30, left: defaultMargin, right: defaultMargin),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(defaultRadius),
                color: kWhiteColor),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                NavigationItem(
                  imageUrl: 'fi_globe',
                  isSelected: true,
                ),
                NavigationItem(
                  imageUrl: 'fi_book-open',
                  isSelected: false,
                ),
                NavigationItem(
                  imageUrl: 'fi_credit-card',
                  isSelected: false,
                ),
                NavigationItem(
                  imageUrl: 'fi_settings',
                  isSelected: false,
                ),
              ],
            ),
          ));
    }

    Widget newThisYear() {
      return Container(
        margin: EdgeInsets.only(top: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "New this year",
              style:
                  blackTextStyle.copyWith(fontSize: 18, fontWeight: semibold),
            ),
            SmallCard()
          ],
        ),
      );
    }

    return Scaffold(
      body: Stack(
        children: [
          SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: defaultMargin),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [header(), TopDestination(), newThisYear()],
              ),
            ),
          ),
          customNavigation()
        ],
      ),
    );
  }
}
