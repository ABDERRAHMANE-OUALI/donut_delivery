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
              style: Theme.of(context).textTheme.bodyLarge,
            )),
        actions: [
          const SizedBox(
              height: 60,
              width: 60,
              child: RiveAnimation.asset(
                "assets/shopping.riv",
                artboard: "shopping",
              ))
        ],
      ),
      body: Stack(children: [
        Positioned(
            left: -220,
            right: 180,
            child: Image.asset("assets/donut_4.png")
                .animate(delay: 500.ms)
                .rotate(curve: Curves.ease, duration: 600.ms)),
        Positioned(
          right: 110,
          child: Column(
            children: [Text("data")],
          ),
        )
      ]),
    );
  }
}
