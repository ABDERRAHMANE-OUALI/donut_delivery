import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

class CategoryItem extends StatelessWidget {
  final String imgPath;
  final String title;
  final Color backgroundColor;
  const CategoryItem(
      {super.key,
      required this.imgPath,
      required this.title,
      required this.backgroundColor});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 21.0),
      child: Column(
        children: [
          CircleAvatar(
              radius: 38,
              backgroundColor: backgroundColor,
              child: SizedBox(
                  height: 50, width: 50, child: RiveAnimation.asset(imgPath))),
          Padding(
            padding: const EdgeInsets.only(top: 12.0),
            child: Text(
              title,
              style: Theme.of(context)
                  .textTheme
                  .bodyLarge
                  ?.copyWith(fontWeight: FontWeight.bold),
            ),
          )
        ],
      ),
    );
  }
}
