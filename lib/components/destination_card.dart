import 'package:flutter/material.dart';
import '../shared/theme.dart';

class DestinationCard extends StatelessWidget {
  final String name;
  final String city;
  final String imageUrl;

  const DestinationCard({Key? key, required this.name, required this.city, required this.imageUrl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 323,
      padding: EdgeInsets.only(left: 10, right: 10, top: 10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(defaultRadius),
          color: kWhiteColor),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        // mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            // margin: ,
            width: 180,
            height: 220,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(defaultRadius),
                // color: kPrimaryColor,
                image:
                    DecorationImage(image: AssetImage('assets/${imageUrl}'))),
          ),
          SizedBox(
            height: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "${name}",
                style:
                    blackTextStyle.copyWith(fontSize: 18, fontWeight: medium),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                "${city}",
                style:
                    grayTextStyle.copyWith(fontSize: 14, fontWeight: regular),
              ),
            ],
          )
        ],
      ),
    );
  }
}
