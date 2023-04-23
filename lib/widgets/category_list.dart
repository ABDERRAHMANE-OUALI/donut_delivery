import 'package:donut_delivery/widgets/category_item.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class CategoryList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 150,
      decoration: const BoxDecoration(
          color: Color.fromRGBO(250, 231, 223, 1),
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(61), bottomLeft: Radius.circular(61))),
      child: Padding(
          padding: const EdgeInsets.only(top: 21),
          child: PageView(
            children: [
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: const [
                    CategoryItem(imgPath: "assets/cloche.riv", title: "Cloche"),
                    CategoryItem(imgPath: "assets/burger.riv", title: "burger"),
                    CategoryItem(imgPath: "assets/pizza.riv", title: "Pizza"),
                    CategoryItem(title: "Donut"),
                  ]),
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: const [
                    CategoryItem(imgPath: "assets/cloche.riv", title: "Cloche"),
                    CategoryItem(imgPath: "assets/burger.riv", title: "burger"),
                    CategoryItem(imgPath: "assets/pizza.riv", title: "Pizza"),
                    CategoryItem(title: "Donut"),
                  ])
            ],
          )),
    );
  }
}
