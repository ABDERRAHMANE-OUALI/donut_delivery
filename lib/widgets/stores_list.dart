import 'package:donut_delivery/models/store_item.dart';
import 'package:donut_delivery/screens/vendor_screen.dart';
import 'package:donut_delivery/widgets/store_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
// ignore: depend_on_referenced_packages
import 'package:collection/collection.dart';

class StoresList extends StatelessWidget {
  const StoresList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
        children: _items.mapIndexed((i, item) {
      return GestureDetector(
        onTap: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => VendorScreen(),
            )),
        child: StoreItem(
          item: item,
        )
            .animate(delay: (100 * i).ms + 600.ms)
            .fadeIn(delay: 500.ms)
            .slideY(duration: 500.ms, curve: Curves.ease, begin: 0.5),
      );
    }).toList());
  }
}

final _items = [
  StoreItemModel(
      rating: "4,2",
      title: "Glodous amoli",
      imgUrl: "assets/donut_item.jpg",
      pricing: '\$2.5'),
  StoreItemModel(
      rating: "4,9",
      title: "Tasties by tina",
      imgUrl: "assets/gladis_item.jpg",
      pricing: '\$2.5'),
  StoreItemModel(
      rating: "4,9",
      title: "Tasties by tina",
      imgUrl: "assets/gladis_item.jpg",
      pricing: '\$2.5'),
  StoreItemModel(
      rating: "4,5",
      title: "Sweets Shop.",
      imgUrl: "assets/tasties_item.jpg",
      pricing: '\$2.5'),
];
