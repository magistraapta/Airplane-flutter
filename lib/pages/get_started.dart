import 'package:flutter/material.dart';
import '../shared/theme.dart';

class GetStarted extends StatelessWidget {
  const GetStarted({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // backgroundColor:
        body: Stack(
      children: [
        Container(
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
              image: DecorationImage(image: AssetImage('assets/bg.png'))),
        ),
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                'Fly like a bird',
                style: whiteTextStyle.copyWith(fontSize: 32, fontWeight: bold),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                'Explore new world with us and let\nyourself get an amazing experiences',
                style:
                    whiteTextStyle.copyWith(fontSize: 16, fontWeight: medium),
                textAlign: TextAlign.center,
              ),
              Container(
                margin: EdgeInsets.only(top: 50, bottom: 80),
                width: 220,
                height: 55,
                child: TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                      backgroundColor: kPrimaryColor,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(17))),
                  child: Text(
                    'Get Started',
                    style: whiteTextStyle.copyWith(
                        fontSize: 18, fontWeight: medium),
                  ),
                ),
              )
            ],
          ),
        )
      ],
    ));
  }
}
