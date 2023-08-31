import 'package:flutter/material.dart';
import '../shared/theme.dart';

class NavigationItem extends StatelessWidget {
  const NavigationItem({Key? key, required this.imageUrl, required this.isSelected}) : super(key: key);

  final String imageUrl;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          height: 8,
        ),
        Container(
          width: 24,
          height: 24,
          decoration: BoxDecoration(
              image:
                  DecorationImage(image: AssetImage('assets/${imageUrl}.png'))),
        ),
        Container(
          width: 30,
          height: 2,
          color: isSelected ? kPrimaryColor : kWhiteColor,
        )
      ],
    );
  }
}
