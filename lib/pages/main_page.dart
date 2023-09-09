import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:newapp/components/navigation_item.dart';
import 'package:newapp/components/small_card.dart';
import 'package:newapp/components/top_destination.dart';
import 'package:newapp/cubit/page_cubit.dart';
import 'package:newapp/pages/home_page.dart';
import 'package:newapp/pages/notification_page.dart';
import 'package:newapp/pages/setting_page.dart';
import 'package:newapp/pages/transaction_page.dart';
import '../shared/theme.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget buildContent(int currentIndex) {
      switch (currentIndex) {
        case 0:
          return HomePage();
        case 1:
          return TransactionPage();
        case 2:
          return NotificationPage();
        case 3:
          return SettingPage();

        default:
          return HomePage();
      }
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
                  index: 0,
                  imageUrl: 'fi_globe',
                ),
                NavigationItem(
                  index: 1,
                  imageUrl: 'fi_book-open',
                ),
                NavigationItem(
                  index: 2,
                  imageUrl: 'fi_credit-card',
                ),
                NavigationItem(
                  index: 3,
                  imageUrl: 'fi_settings',
                ),
              ],
            ),
          ));
    }

    return BlocBuilder<PageCubit, int>(
      builder: (context, currentIndex) {
        return Scaffold(
          backgroundColor: kWhiteColor,
          body: Stack(
            children: [buildContent(currentIndex), customNavigation()],
          ),
        );
      },
    );
  }
}
