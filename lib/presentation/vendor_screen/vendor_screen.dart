import 'dart:async';

import 'package:donut_delivery/data.dart';
import 'package:donut_delivery/presentation/product_screen/product_screen.dart';
import 'package:donut_delivery/presentation/shooping_screen/shooping_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:rive/rive.dart';

class VendorScreen extends StatefulWidget {
  const VendorScreen({super.key});

  @override
  State<VendorScreen> createState() => _VendorScreenState();
}

class _VendorScreenState extends State<VendorScreen> {
  bool _reachedTop = true;
  SMITrigger? _shoopingTrigger;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          NotificationListener<ScrollNotification>(
            onNotification: (notification) {
              if (notification.metrics.pixels == 0.0) {
                setState(() {
                  _reachedTop = true;
                });
              } else {
                setState(() {
                  _reachedTop = false;
                });
              }
              return true;
            },
            child: CustomScrollView(
              slivers: [
                SliverAppBar.large(
                    expandedHeight: 340,
                    backgroundColor: Colors.transparent,
                    flexibleSpace: ClipRRect(
                      borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(30),
                          bottomRight: Radius.circular(30)),
                      child: FlexibleSpaceBar(
                        background: Stack(
                          fit: StackFit.expand,
                          children: [
                            Image.asset(
                              "assets/temp_vendor_bg.png",
                              fit: BoxFit.cover,
                            ),
                            Positioned(
                              bottom: 260,
                              right: 0,
                              height: 91,
                              width: 391,
                              child: Container(
                                color: Colors.transparent,
                                height: 91,
                                child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      SizedBox(
                                        height: 150,
                                        width: 70,
                                        child: GestureDetector(
                                          onTap: () {
                                            _shoopingTrigger?.fire();
                                            Timer(700.ms, () {
                                              Navigator.push(
                                                  context,
                                                  PageRouteBuilder(
                                                    pageBuilder: (context,
                                                            animation,
                                                            secondaryAnimation) =>
                                                        const ShoppingScreen(),
                                                    transitionDuration: 200.ms,
                                                    transitionsBuilder: (context,
                                                            animation,
                                                            secondaryAnimation,
                                                            child) =>
                                                        SlideTransition(
                                                      position: Tween<Offset>(
                                                        begin:
                                                            const Offset(0, 1),
                                                        end: const Offset(0, 0),
                                                      ).animate(animation),
                                                      child: child,
                                                    ),
                                                  ));
                                            });
                                          },
                                          child: RiveAnimation.asset(
                                            "assets/shopping.riv",
                                            artboard: "shopping",
                                            onInit: (artboard) {
                                              final controller =
                                                  StateMachineController
                                                      .fromArtboard(artboard,
                                                          "State Machine 1");
                                              artboard
                                                  .addController(controller!);
                                              setState(() {
                                                _shoopingTrigger =
                                                    controller.findSMI("click")
                                                        as SMITrigger;
                                              });
                                            },
                                          ),
                                        ),
                                      ),
                                    ]),
                              ),
                            ),
                          ],
                        ),
                      ),
                    )),
                const SliverPadding(padding: EdgeInsets.only(top: 60)),
                SliverList(
                    delegate: SliverChildBuilderDelegate((context, index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ProductScreen(
                              donutUrl: productList[index]["imagePath"],
                            ),
                          ));
                    },
                    child: ListTile(
                      contentPadding: const EdgeInsets.all(12),
                      leading: Image.asset(productList[index]["imagePath"]),
                      title: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            productList[index]["title"],
                            style: Theme.of(context).textTheme.headlineSmall,
                          ),
                          Text(
                            "9.5\$",
                            style: Theme.of(context).textTheme.headlineSmall,
                          ),
                        ],
                      ),
                      subtitle: Padding(
                        padding: const EdgeInsets.only(top: 11.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Flexible(
                              child: Text(
                                productList[index]["detail"],
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium
                                    ?.copyWith(color: Colors.grey),
                              ),
                            ),
                            const Text(
                              "ADD TO CART",
                              style: TextStyle(
                                  color: Colors.red,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                }, childCount: productList.length))
              ],
            ),
          ),
          Positioned(
            bottom: 480,
            right: 0,
            width: MediaQuery.of(context).size.width - 20,
            height: 151,
            child: Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    bottomLeft: Radius.circular(30)),
                color: Colors.white,
              ),
              height: 191,
              child: Padding(
                padding: const EdgeInsets.only(left: 18.0),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 18),
                          child: Text(
                            "New York Donut",
                            style: Theme.of(context).textTheme.displaySmall,
                            textAlign: TextAlign.start,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 18),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  const Padding(
                                    padding: EdgeInsets.only(right: 3.0),
                                    child: Icon(
                                      Icons.star,
                                      color: Colors.yellow,
                                    ),
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.only(right: 8.0),
                                    child: Text(
                                      "4.2",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
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
                                    "15-20 min",
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyLarge
                                        ?.copyWith(color: Colors.grey),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Row(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 18),
                              child: Container(
                                padding: const EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(10)),
                                    color: Theme.of(context)
                                        .colorScheme
                                        .secondary),
                                child: Text(
                                  "Free Delivery",
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyLarge
                                      ?.copyWith(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                            const Text("21 Reviews")
                          ],
                        )
                      ],
                    ),
                    SizedBox(
                      width: 100,
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset("assets/donut_item.jpg")),
                    )
                  ],
                ),
              ),
            ),
          )
              .animate(target: _reachedTop ? 1 : 0)
              .slideX(begin: 1, curve: Curves.ease),
        ],
      ),
    );
  }
}
