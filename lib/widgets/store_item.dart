import 'package:donut_delivery/models/store_item.dart';
import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

class StoreItem extends StatelessWidget {
  final StoreItemModel item;
  const StoreItem({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 28.0),
      child: ListTile(
        horizontalTitleGap: 22,
        leading: Image.asset(
          item.imgUrl,
          width: 90,
          height: 90,
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              item.title,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 21),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 7),
              child: Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(right: 3.0),
                    child: Icon(
                      Icons.star,
                      color: Colors.yellow,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: Text(
                      item.rating,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 12.0),
                    child: Text(
                      "Fast - Food",
                      style: Theme.of(context)
                          .textTheme
                          .bodyLarge
                          ?.copyWith(color: Colors.grey),
                    ),
                  ),
                  Text(
                    item.pricing,
                    style: Theme.of(context)
                        .textTheme
                        .bodyLarge
                        ?.copyWith(color: Colors.grey),
                  ),
                ],
              ),
            )
          ],
        ),
        subtitle: Padding(
          padding: const EdgeInsets.only(top: 18.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: const EdgeInsets.all(6),
                    decoration: const BoxDecoration(
                        color:
                            // Color.fromARGB(255, 254, 213, 255)
                            Color.fromARGB(98, 254, 213, 255),
                        borderRadius: BorderRadius.all(Radius.circular(32))),
                    child: Row(
                      children: [
                        const Icon(Icons.timer),
                        const Text(
                          "15 - 20 min",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                  const Text("2,4 km")
                ],
              )
            ],
          ),
        ),
        trailing: const SizedBox(
          height: 40,
          width: 40,
          child: RiveAnimation.asset("assets/heart.riv"),
        ),
      ),
    );
  }
}
