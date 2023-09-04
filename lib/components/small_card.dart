import 'package:flutter/material.dart';
import '../shared/theme.dart';

class SmallCard extends StatelessWidget {
  const SmallCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      width: 327,
      padding: EdgeInsets.only(top: 10, bottom: 10, left: 10),
      decoration: BoxDecoration(
          color: kWhiteColor,
          borderRadius: BorderRadius.circular(defaultMargin)),
      child: Row(children: [
        Container(
          height: 70,
          width: 70,
          decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage('assets/cover-1.png'))),
        ),
        SizedBox(
          width: 16,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Danau beratana",
              style: blackTextStyle.copyWith(fontSize: 18, fontWeight: medium),
            ),
            Text(
              "Singapura",
              style: grayTextStyle.copyWith(fontSize: 14, fontWeight: light),
            ),
          ],
        )
      ]),
    );
  }
}
