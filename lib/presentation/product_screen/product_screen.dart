import 'package:donut_delivery/widgets/product_text_info.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:rive/rive.dart';

class ProductScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leadingWidth: 100,
        leading: TextButton.icon(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back_ios_new),
            label: Text(
              "Back",
              style: Theme.of(context)
                  .textTheme
                  .bodyLarge
                  ?.copyWith(fontWeight: FontWeight.bold, fontSize: 19),
            )),
        actions: const [
          SizedBox(
              height: 60,
              width: 60,
              child: RiveAnimation.asset(
                "assets/shopping.riv",
                artboard: "shopping",
              ))
        ],
      ),
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height / 2,
            width: MediaQuery.of(context).size.width,
            child: Stack(children: [
              Positioned(
                  left: -220,
                  right: 180,
                  child: Image.asset("assets/donut_4.png")
                      .animate(delay: 500.ms)
                      .rotate(curve: Curves.ease, duration: 600.ms)),
              Positioned(
                right: 70,
                top: 130,
                child: SizedBox(
                  height: 240,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const ProductTextInfo(
                        text: 'Weight',
                        info: "400g",
                      ),
                      const ProductTextInfo(
                        text: 'Calories',
                        info: "420 Col",
                      ),
                      const ProductTextInfo(
                        text: 'People',
                        info: "1 Person",
                      ),
                    ],
                  ),
                ),
              )
            ]),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "Raspberry Donut",
                    style: Theme.of(context).textTheme.displaySmall,
                  ),
                  Text(
                    "\$11.45",
                    style: Theme.of(context)
                        .textTheme
                        .bodyLarge
                        ?.copyWith(color: Colors.red),
                  ),
                  const Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 28.0),
                        child: ClipRRect(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(20)),
                          child: Container(
                              height: 60,
                              width: 60,
                              color: Colors.grey[200],
                              child: const RiveAnimation.asset(
                                "assets/heart.riv",
                                artboard: "heart",
                              )),
                        ),
                      ),
                      Expanded(
                        child: ElevatedButton(
                          style: const ButtonStyle(
                              padding:
                                  MaterialStatePropertyAll(EdgeInsets.all(17)),
                              backgroundColor:
                                  MaterialStatePropertyAll(Colors.red),
                              elevation: MaterialStatePropertyAll(1)),
                          onPressed: () {},
                          child: Text(
                            "ADD TO CART",
                            style: Theme.of(context)
                                .textTheme
                                .headlineMedium
                                ?.copyWith(color: Colors.white),
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
