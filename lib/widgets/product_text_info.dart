import 'package:flutter/material.dart';

class ProductTextInfo extends StatelessWidget {
  final String text;
  final String info;

  const ProductTextInfo({super.key, required this.text, required this.info});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          text,
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey),
        ),
        Text(
          info,
          style:
              Theme.of(context).textTheme.displayMedium?.copyWith(fontSize: 19),
        )
      ],
    );
  }
}
