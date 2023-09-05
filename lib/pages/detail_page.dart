import 'package:flutter/material.dart';
import '../shared/theme.dart';

class DetailPage extends StatelessWidget {
  final String imageUrl;
  const DetailPage({Key? key, required this.imageUrl}) : super(key: key);

  Widget backgroundImage() {
    return Container(
      width: double.infinity,
      height: 450,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/${imageUrl}'), fit: BoxFit.cover)),
    );
  }

  Widget information() {
    return Container(
      width: 327,
      height: 446,
      decoration: BoxDecoration(color: kWhiteColor),
    );
  }

  Widget customShadow() {
    return Container(
      width: double.infinity,
      height: 214,
      margin: EdgeInsets.only(top: 236),
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
            Colors.black.withOpacity(0),
            Colors.black.withOpacity(0.95)
          ])),
    );
  }

  Widget content() {
    return Container(
      margin:
          EdgeInsets.only(top: 310, left: defaultMargin, right: defaultMargin),
      width: double.infinity,
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Lake Ciliwung",
                style:
                    whiteTextStyle.copyWith(fontSize: 24, fontWeight: semibold),
              ),
              Text(
                'Tangerang',
                style:
                    whiteTextStyle.copyWith(fontSize: 16, fontWeight: medium),
              ),
              Container(
                width: 342,
                margin: EdgeInsets.only(top: 30),
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                decoration: BoxDecoration(
                    color: kWhiteColor,
                    borderRadius: BorderRadius.circular(defaultRadius)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'About',
                      style: blackTextStyle.copyWith(
                          fontSize: 18, fontWeight: semibold),
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    Text(
                      'Berada di jalur jalan provinsi yang menghubungkan Denpasar\nSingaraja serta letaknya yang dekat dengan Kebun Raya Eka Karya menjadikan tempat Bali.',
                      style: blackTextStyle.copyWith(
                          fontSize: 14, fontWeight: medium),
                    )
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Stack(
        children: [backgroundImage(), customShadow(), content()],
      ),
    );
  }
}
