import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:newapp/cubit/page_cubit.dart';
import '../shared/theme.dart';

class NavigationItem extends StatelessWidget {
  final String imageUrl;
  final int index;
  const NavigationItem({Key? key, required this.imageUrl, required this.index})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.read<PageCubit>().setPage(index);
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            height: 8,
          ),
          Image.asset(
            'assets/${imageUrl}.png',
            width: 24,
            height: 24,
            color: context.read<PageCubit>().state == index
                ? kPrimaryColor
                : kGrayColor,
          ),
          Container(
            width: 30,
            height: 2,
            color: context.read<PageCubit>().state == index
                ? kPrimaryColor
                : kWhiteColor,
          )
        ],
      ),
    );
  }
}
