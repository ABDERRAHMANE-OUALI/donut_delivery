import 'package:blur/blur.dart';
import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

class ShoppingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Blur(
            blur: 25.5,
            blurColor: Colors.white,
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: RiveAnimation.asset("assets/shapes.riv"),
            ),
          ),
          Positioned(
            top: 120,
            left: 40,
            right: 20,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Wrap(
                      children: [
                        Text(
                          "Order \n Your Donuts \n & Coffee",
                          style: Theme.of(context)
                              .textTheme
                              .displayLarge
                              ?.copyWith(fontSize: 43),
                        ),
                      ],
                    ),
                    ElevatedButton(
                        style: ButtonStyle(
                            padding:
                                MaterialStatePropertyAll(EdgeInsets.all(9)),
                            shape: MaterialStatePropertyAll(CircleBorder()),
                            backgroundColor:
                                MaterialStatePropertyAll(Colors.black)),
                        onPressed: () => Navigator.pop(context),
                        child: Icon(Icons.close_sharp))
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 28.0),
                  child: const Text(
                      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries,"),
                )
              ],
            ),
          ),
          Positioned(
              bottom: 120,
              left: 40,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(17)),
                    child: ElevatedButton.icon(
                        style: ButtonStyle(
                            elevation: MaterialStatePropertyAll(23),
                            backgroundColor: MaterialStatePropertyAll(
                                Theme.of(context).colorScheme.secondary),
                            iconColor: MaterialStatePropertyAll(Colors.black),
                            padding: MaterialStatePropertyAll(
                                EdgeInsets.symmetric(
                                    horizontal: 33, vertical: 22))),
                        onPressed: () => Navigator.pop(context),
                        icon: Icon(Icons.arrow_forward),
                        label: Text(
                          "Start Shopping",
                          style: Theme.of(context)
                              .textTheme
                              .headlineMedium
                              ?.copyWith(fontWeight: FontWeight.w600),
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 28.0),
                    child: const Text(
                        "Lorem Ipsum is simply dummy text of  the printing \n and typesetting industry.  Lorem Ipsum has been \n the industry's standard dummy text since the 1500s"),
                  )
                ],
              ))
        ],
      ),
    );
  }
}
