import 'package:donut_delivery/data/models/store_item.dart';
import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

class StoreItem extends StatefulWidget {
  final StoreItemModel item;
  const StoreItem({super.key, required this.item});

  @override
  State<StoreItem> createState() => _StoreItemState();
}

class _StoreItemState extends State<StoreItem> {
  SMIBool? _like;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 28.0),
      child: ListTile(
        horizontalTitleGap: 22,
        leading: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.asset(
            widget.item.imgUrl,
            width: 100,
            height: 100,
            fit: BoxFit.cover,
          ),
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(widget.item.title,
                style: Theme.of(context).textTheme.headlineMedium
                // const TextStyle(
                //   fontWeight: FontWeight.bold,
                //   fontSize: 19,
                // ),
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
                      widget.item.rating,
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
                    widget.item.pricing,
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
        trailing: SizedBox(
          height: 40,
          width: 40,
          child: GestureDetector(
            onTap: () {
              _like?.value = !(_like?.value ?? false);
            },
            child: RiveAnimation.asset(
              "assets/heart.riv",
              onInit: (artboard) {
                final controller = StateMachineController.fromArtboard(
                    artboard, "State Machine 1");
                artboard.addController(controller!);
                setState(() {
                  _like = controller.findInput<bool>("like") as SMIBool;
                });
              },
            ),
          ),
        ),
      ),
    );
  }
}
