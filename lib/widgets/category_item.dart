import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

class CategoryItem extends StatelessWidget {
  final String imgPath;
  final String title;
  const CategoryItem(
      {super.key, this.imgPath = "assets/donut.riv", required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 70, width: 70, child: RiveAnimation.asset(imgPath)),
        Padding(
          padding: EdgeInsets.only(top: 12.0),
          child: Text(
            title,
            style: Theme.of(context)
                .textTheme
                .bodyLarge
                ?.copyWith(fontWeight: FontWeight.bold),
          ),
        )
      ],
    );
  }
}
