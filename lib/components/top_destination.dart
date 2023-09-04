import 'package:flutter/material.dart';
import 'package:newapp/components/destination_card.dart';
import '../shared/theme.dart';

class TopDestination extends StatelessWidget {
  const TopDestination({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 30),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            DestinationCard(
                name: "lake ciliwung",
                city: "tangerang",
                imageUrl: "image-8.png"),
            DestinationCard(
                name: "White Houses", city: "Spain", imageUrl: "image-7.png"),
            DestinationCard(
                name: "Menarra", city: "Japan", imageUrl: "image-17.png"),
            DestinationCard(
                name: "Hill mayo", city: "Morocco", imageUrl: "image-16.png"),
          ],
        ),
      ),
    );
  }
}
