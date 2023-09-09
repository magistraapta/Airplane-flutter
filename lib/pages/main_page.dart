import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:newapp/components/navigation_item.dart';
import 'package:newapp/components/small_card.dart';
import 'package:newapp/components/top_destination.dart';
import 'package:newapp/cubit/page_cubit.dart';
import 'package:newapp/pages/home_page.dart';
import '../shared/theme.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget buildContent() {
      return HomePage();
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

    return Scaffold(
      backgroundColor: kWhiteColor,
      body: Stack(
        children: [buildContent(), customNavigation()],
      ),
    );
  }
}
